/**
 * problems.js — Load and display weekly problems for the current user
 * Supports v1 (base files) and v2 (business_metrics, tags, CUR, RI/SP)
 */

let metricsChart = null;
let trafficChart = null;

document.addEventListener('DOMContentLoaded', async () => {
  await APP.init();

  if (!APP.isLoggedIn()) {
    window.location.href = 'index.html';
    return;
  }

  const params = new URLSearchParams(window.location.search);
  const week = params.get('week');
  const username = APP.getUsername();

  // No week param → show week selector
  if (!week) {
    await showWeekSelector(username);
    return;
  }

  document.getElementById('problem-loading').style.display = 'block';
  document.getElementById('page-title').textContent = `Week ${week} Problems`;

  try {
    const assignment = await APP.getJSON(`members/${username}/problems/week-${week.padStart(2, '0')}/assignment.json`);
    const level = assignment.level;

    const levelBadge = document.getElementById('level-badge');
    levelBadge.textContent = level;
    levelBadge.className = `badge badge-${level}`;
    levelBadge.style.display = '';

    document.getElementById('submit-btn-top').style.display = '';
    document.getElementById('submit-btn-top').href = `submit.html?week=${week}`;

    const scenarios = assignment.scenarios;

    // Build tabs
    const tabsEl = document.getElementById('scenario-tabs');
    tabsEl.innerHTML = scenarios.map((id, i) => `
      <div class="tab ${i === 0 ? 'active' : ''}" data-scenario="${id}" onclick="loadScenario('${week}', '${username}', '${id}', this)">
        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/></svg>
        ${id}
      </div>
    `).join('');

    await loadScenario(week, username, scenarios[0]);

    document.getElementById('problem-loading').style.display = 'none';
    document.getElementById('problem-content').style.display = 'block';
  } catch (e) {
    document.getElementById('problem-loading').innerHTML = `
      <div class="alert alert-error">
        Failed to load problems: ${escapeHtml(e.message)}<br>
        <small>이 주차에 배정된 문제가 없거나, 아직 생성되지 않았을 수 있습니다.</small>
      </div>
    `;
  }
});

async function showWeekSelector(username) {
  const GRADIENTS = ['grad-teal', 'grad-blue', 'grad-purple', 'grad-orange', 'grad-pink', 'grad-green', 'grad-teal', 'grad-blue'];

  document.getElementById('page-title').textContent = 'Problems';

  // Load week configs
  let weeks = [];
  try {
    const weekFiles = await APP.listDir('platform/config/weeks');
    for (const f of weekFiles) {
      if (f.name && f.name.endsWith('.yaml')) {
        try { weeks.push(await APP.getYAML(`platform/config/weeks/${f.name}`)); } catch {}
      }
    }
  } catch {}

  // Check which weeks have problems for this user
  const cardsEl = document.getElementById('week-cards');

  if (weeks.length === 0) {
    // Fallback: show week 1-8
    for (let i = 1; i <= 8; i++) weeks.push({ week: i, level: 'L1', description: `Week ${i}`, num_problems: 3 });
  }

  cardsEl.innerHTML = weeks.map((w, i) => {
    const grad = GRADIENTS[((w.week || i + 1) - 1) % GRADIENTS.length];
    const weekNum = w.week || (i + 1);
    return `
      <a href="problems.html?week=${weekNum}" class="card card-gradient" style="text-decoration:none;color:inherit;">
        <div class="card-cover ${grad}">
          <span class="cover-badge">${w.level || 'L1'}</span>
          <div class="cover-label">Week ${weekNum}</div>
          <div class="cover-title">${escapeHtml(w.description || 'FinOps Problem')}</div>
        </div>
        <div class="card-meta">
          <span class="meta-item">
            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/></svg>
            ${w.num_problems || 3} problems
          </span>
        </div>
        <div class="card-actions">
          <span style="font-size:13px;color:var(--text-muted);">View problems</span>
          <span class="arrow">&rarr;</span>
        </div>
      </a>
    `;
  }).join('');

  document.getElementById('week-selector').style.display = 'block';
}

async function loadScenario(week, username, scenarioId, tabEl) {
  const weekStr = String(week).padStart(2, '0');
  const basePath = `members/${username}/problems/week-${weekStr}/${scenarioId}`;

  if (tabEl) {
    document.querySelectorAll('#scenario-tabs .tab').forEach(t => t.classList.remove('active'));
    tabEl.classList.add('active');
  }

  // Update badge
  const scenarioBadge = document.getElementById('scenario-badge');
  if (scenarioBadge) scenarioBadge.textContent = scenarioId;

  // Fetch all files in parallel (v1 + v2)
  const [readme, terraform, costReport, metrics, hint,
         businessMetrics, tagsInventory, rispCoverage, curReport] = await Promise.allSettled([
    APP.getFileContent(`${basePath}/README.md`),
    APP.getFileContent(`${basePath}/main.tf`),
    APP.getJSON(`${basePath}/cost_report.json`),
    APP.getJSON(`${basePath}/metrics/metrics.json`),
    APP.getFileContent(`${basePath}/hint.txt`),
    // v2 files (may not exist for L1)
    APP.getJSON(`${basePath}/business_metrics.json`),
    APP.getJSON(`${basePath}/tags_inventory.json`),
    APP.getJSON(`${basePath}/ri_sp_coverage.json`),
    APP.getFileContent(`${basePath}/cur_report.csv`),
  ]);

  // ── v1: README ──
  const readmeEl = document.getElementById('readme-content');
  if (readme.status === 'fulfilled') {
    readmeEl.innerHTML = markdownToHtml(readme.value);
  } else {
    readmeEl.innerHTML = '<p style="color:var(--text-muted);">README not available</p>';
  }

  // ── v1: Terraform ──
  const tfEl = document.getElementById('terraform-code');
  if (terraform.status === 'fulfilled') {
    tfEl.textContent = terraform.value;
    hljs.highlightElement(tfEl);
  } else {
    tfEl.textContent = '# Terraform code not available';
  }

  // ── v1: Cost Report ──
  const costEl = document.getElementById('cost-report-content');
  if (costReport.status === 'fulfilled') {
    costEl.innerHTML = renderCostReport(costReport.value);
  } else {
    costEl.innerHTML = '<p style="color:var(--text-muted);">Cost report not available</p>';
  }

  // ── v1: Metrics Chart ──
  if (metrics.status === 'fulfilled') {
    renderMetricsChart(metrics.value);
  }

  // ── v1: Hint ──
  const hintEl = document.getElementById('hint-content');
  if (hint.status === 'fulfilled') {
    hintEl.textContent = hint.value;
  } else {
    hintEl.textContent = 'No hint available';
  }

  // ── v2: Business Metrics (L2+) ──
  const bmSection = document.getElementById('section-business-metrics');
  if (businessMetrics.status === 'fulfilled') {
    bmSection.style.display = '';
    renderBusinessMetrics(businessMetrics.value);
  } else {
    bmSection.style.display = 'none';
  }

  // ── v2: Tags Inventory (L2+) ──
  const tagsSection = document.getElementById('section-tags-inventory');
  if (tagsInventory.status === 'fulfilled') {
    tagsSection.style.display = '';
    renderTagsInventory(tagsInventory.value);
  } else {
    tagsSection.style.display = 'none';
  }

  // ── v2: RI/SP Coverage (L3) ──
  const rispSection = document.getElementById('section-ri-sp');
  if (rispCoverage.status === 'fulfilled') {
    rispSection.style.display = '';
    renderRISPCoverage(rispCoverage.value);
  } else {
    rispSection.style.display = 'none';
  }

  // ── v2: CUR Report (L3) ──
  const curSection = document.getElementById('section-cur-report');
  if (curReport.status === 'fulfilled') {
    curSection.style.display = '';
    renderCURReport(curReport.value);
  } else {
    curSection.style.display = 'none';
  }

  // Update submit links
  const submitLink = document.getElementById('submit-link');
  if (submitLink) submitLink.href = `submit.html?week=${week}&scenario=${scenarioId}`;
  const submitBtnTop = document.getElementById('submit-btn-top');
  if (submitBtnTop) submitBtnTop.href = `submit.html?week=${week}&scenario=${scenarioId}`;
}

// ══════════════════════════════════════════════════════
// v1 Renderers
// ══════════════════════════════════════════════════════

function renderCostReport(data) {
  if (!data.monthly_data) return '<p>No data</p>';

  // Build service columns from first month's data
  const serviceNames = (data.monthly_data[0]?.services || []).map(s => s.service);

  let html = `<table><thead><tr><th>Month</th><th>Total ($)</th>`;
  for (const svc of serviceNames) {
    html += `<th>${escapeHtml(svc)} ($)</th>`;
  }
  html += `</tr></thead><tbody>`;

  for (const m of data.monthly_data) {
    html += `
      <tr>
        <td>${m.label}</td>
        <td>$${m.total_spend_usd.toLocaleString('en-US', { minimumFractionDigits: 2 })}</td>`;
    for (const svc of serviceNames) {
      const svcData = (m.services || []).find(s => s.service === svc);
      const spend = svcData ? svcData.spend_usd : 0;
      html += `<td>$${spend.toLocaleString('en-US', { minimumFractionDigits: 2 })}</td>`;
    }
    html += `</tr>`;
  }

  html += '</tbody></table>';

  if (data.summary) {
    html += `
      <div style="margin-top:14px; padding-top:14px; border-top:1px solid var(--border-light); font-size:13px; color:var(--text-muted); display:flex; gap:20px;">
        <span>Avg Monthly Total: <strong style="color:var(--text);">$${data.summary.avg_monthly_total?.toFixed(2) || '-'}</strong></span>
      </div>
    `;
  }

  return html;
}

function renderMetricsChart(data) {
  const canvas = document.getElementById('metrics-chart');
  const ctx = canvas.getContext('2d');

  if (metricsChart) metricsChart.destroy();

  const resources = data.resources || {};
  const datasets = [];
  const colors = ['#4c6ef5', '#12b886', '#fa5252', '#fd7e14', '#7950f2', '#20c997', '#e64980', '#3bc9db', '#fab005', '#51cf66'];

  let colorIdx = 0;

  for (const [resName, resData] of Object.entries(resources)) {
    const metrics = resData.metrics || {};
    for (const [metricName, metricData] of Object.entries(metrics)) {
      const points = metricData.datapoints || [];
      const downsampled = [];
      for (let i = 0; i < points.length; i += 6) downsampled.push(points[i]);

      const isProblem = resData.is_problem;
      const color = colors[colorIdx % colors.length];
      datasets.push({
        label: `${resName} - ${metricName}${isProblem ? ' *' : ''}`,
        data: downsampled,
        borderColor: color,
        backgroundColor: color + '15',
        borderWidth: isProblem ? 2.5 : 1.5,
        borderDash: isProblem ? [] : [6, 4],
        pointRadius: 0,
        tension: 0.4,
        fill: isProblem,
      });
      colorIdx++;
    }
  }

  const labels = Array.from({ length: datasets[0]?.data.length || 0 }, (_, i) => {
    const day = Math.floor(i / 4);
    return day % 5 === 0 ? `Day ${day}` : '';
  });

  metricsChart = new Chart(ctx, {
    type: 'line',
    data: { labels, datasets },
    options: {
      responsive: true,
      maintainAspectRatio: false,
      interaction: { mode: 'index', intersect: false },
      plugins: {
        legend: {
          labels: { color: '#5f6577', font: { size: 11, family: 'Inter' }, usePointStyle: true, pointStyle: 'line' }
        }
      },
      scales: {
        x: {
          ticks: { color: '#9098b1', maxTicksLimit: 10, font: { size: 11 } },
          grid: { color: '#eceef4' }
        },
        y: {
          ticks: { color: '#9098b1', font: { size: 11 } },
          grid: { color: '#eceef4' }
        }
      }
    }
  });
}

// ══════════════════════════════════════════════════════
// v2 Renderers
// ══════════════════════════════════════════════════════

function renderBusinessMetrics(data) {
  // Unit Economics stat cards
  const ue = data.current_unit_economics || {};
  document.getElementById('ue-cost-per-order').textContent = `$${(ue.cost_per_order || 0).toFixed(2)}`;
  document.getElementById('ue-cost-per-1k').textContent = `$${(ue.cost_per_1k_requests || 0).toFixed(2)}`;
  document.getElementById('ue-cost-revenue').textContent = `${(ue.cost_to_revenue_pct || 0).toFixed(1)}%`;

  // Daily Traffic chart
  const daily = data.daily_metrics || [];
  if (!daily.length) return;

  const canvas = document.getElementById('traffic-chart');
  const ctx = canvas.getContext('2d');

  if (trafficChart) trafficChart.destroy();

  const labels = daily.map(d => {
    const parts = d.date.split('-');
    return `${parts[1]}/${parts[2]}`;
  });

  trafficChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels,
      datasets: [
        {
          label: 'Requests',
          data: daily.map(d => d.requests),
          borderColor: '#4c6ef5',
          backgroundColor: '#4c6ef515',
          borderWidth: 2,
          pointRadius: 0,
          tension: 0.3,
          fill: true,
          yAxisID: 'y',
        },
        {
          label: 'Orders',
          data: daily.map(d => d.orders),
          borderColor: '#12b886',
          backgroundColor: '#12b88615',
          borderWidth: 2,
          pointRadius: 0,
          tension: 0.3,
          fill: true,
          yAxisID: 'y1',
        },
      ],
    },
    options: {
      responsive: true,
      maintainAspectRatio: false,
      interaction: { mode: 'index', intersect: false },
      plugins: {
        legend: {
          labels: { color: '#5f6577', font: { size: 11, family: 'Inter' }, usePointStyle: true, pointStyle: 'line' }
        }
      },
      scales: {
        x: {
          ticks: { color: '#9098b1', maxTicksLimit: 8, font: { size: 11 } },
          grid: { color: '#eceef4' }
        },
        y: {
          position: 'left',
          title: { display: true, text: 'Requests', color: '#4c6ef5', font: { size: 11 } },
          ticks: { color: '#9098b1', font: { size: 11 } },
          grid: { color: '#eceef4' }
        },
        y1: {
          position: 'right',
          title: { display: true, text: 'Orders', color: '#12b886', font: { size: 11 } },
          ticks: { color: '#9098b1', font: { size: 11 } },
          grid: { drawOnChartArea: false }
        }
      }
    }
  });
}

function renderTagsInventory(data) {
  const summary = data.summary || {};
  document.getElementById('tags-coverage').textContent = `${(summary.tag_coverage_pct || 0).toFixed(1)}%`;
  document.getElementById('tags-compliant').textContent = summary.fully_compliant || 0;
  document.getElementById('tags-non-compliant').textContent = summary.non_compliant || 0;

  // Table of non-compliant resources
  const resources = (data.resources || []).filter(r => r.missing_tags && r.missing_tags.length > 0);
  const contentEl = document.getElementById('tags-table-content');

  if (!resources.length) {
    contentEl.innerHTML = '<p style="color:var(--text-muted);font-size:13px;">All resources are tag-compliant.</p>';
    return;
  }

  let html = `<table><thead><tr><th>Resource</th><th>Type</th><th>Coverage</th><th>Missing Tags</th></tr></thead><tbody>`;
  for (const r of resources) {
    const color = r.compliance_pct < 30 ? 'var(--red)' : r.compliance_pct < 60 ? 'var(--orange)' : 'var(--green)';
    html += `
      <tr>
        <td style="font-family:var(--mono);font-size:13px;">${escapeHtml(r.resource_name)}</td>
        <td style="font-size:13px;">${escapeHtml(r.resource_type)}</td>
        <td style="color:${color};font-weight:600;">${r.compliance_pct}%</td>
        <td>${r.missing_tags.map(t => `<span class="badge" style="background:var(--red-light);color:var(--red);margin:2px;">${escapeHtml(t)}</span>`).join(' ')}</td>
      </tr>
    `;
  }
  html += '</tbody></table>';
  contentEl.innerHTML = html;
}

function renderRISPCoverage(data) {
  const cov = data.coverage_summary || {};
  document.getElementById('risp-ri-pct').textContent = `${(cov.ri_coverage_pct || 0).toFixed(1)}%`;
  document.getElementById('risp-sp-pct').textContent = `${(cov.sp_coverage_pct || 0).toFixed(1)}%`;
  document.getElementById('risp-od-pct').textContent = `${(cov.on_demand_pct || 0).toFixed(1)}%`;

  const potential = data.potential_savings || {};
  const spSavings = potential.with_1yr_sp?.monthly_savings_usd || 0;
  document.getElementById('risp-potential').textContent = `$${spSavings.toLocaleString('en-US', { minimumFractionDigits: 0 })}`;

  // Reservations table
  const reservations = data.reservations || [];
  const contentEl = document.getElementById('risp-reservations-content');

  if (!reservations.length) {
    contentEl.innerHTML = '<p style="color:var(--text-muted);font-size:13px;">No existing reservations.</p>';
    return;
  }

  let html = `<table><thead><tr><th>Type</th><th>Instance</th><th>Term</th><th>Count</th><th>Utilization</th><th>Monthly Cost</th></tr></thead><tbody>`;
  for (const r of reservations) {
    const utilColor = r.utilization_pct > 80 ? 'var(--green)' : r.utilization_pct > 50 ? 'var(--orange)' : 'var(--red)';
    html += `
      <tr>
        <td>${escapeHtml(r.type)}</td>
        <td style="font-family:var(--mono);font-size:13px;">${escapeHtml(r.instance_type)}</td>
        <td>${r.term}</td>
        <td>${r.count}</td>
        <td style="color:${utilColor};font-weight:500;">${r.utilization_pct}%</td>
        <td>$${r.monthly_cost_usd.toFixed(2)}</td>
      </tr>
    `;
  }
  html += '</tbody></table>';

  // Potential savings breakdown
  if (potential.with_1yr_ri) {
    html += `
      <div style="margin-top:14px;padding-top:14px;border-top:1px solid var(--border-light);font-size:13px;display:flex;gap:24px;flex-wrap:wrap;">
        <span style="color:var(--text-muted);">Potential savings:
          <strong style="color:var(--text);">1yr RI $${potential.with_1yr_ri.monthly_savings_usd.toFixed(0)}/mo</strong>
        </span>
        <span style="color:var(--text-muted);">
          <strong style="color:var(--text);">1yr SP $${potential.with_1yr_sp.monthly_savings_usd.toFixed(0)}/mo</strong>
        </span>
        <span style="color:var(--text-muted);">
          <strong style="color:var(--green);">3yr RI $${potential.with_3yr_ri.monthly_savings_usd.toFixed(0)}/mo</strong>
        </span>
      </div>
    `;
  }

  contentEl.innerHTML = html;
}

function renderCURReport(csvText) {
  const lines = csvText.trim().split('\n');
  if (lines.length < 2) {
    document.getElementById('cur-table-content').innerHTML = '<p style="color:var(--text-muted);">No CUR data</p>';
    return;
  }

  const headers = parseCSVLine(lines[0]);
  // Show only key columns for readability
  const displayCols = [
    'lineItem/UsageStartDate',
    'lineItem/ProductCode',
    'lineItem/UsageType',
    'lineItem/UnblendedCost',
    'resourceTags/user:Service',
  ];
  const colIndices = displayCols.map(c => headers.indexOf(c)).filter(i => i >= 0);
  const displayHeaders = colIndices.map(i => headers[i].split('/').pop().replace('lineItem/', ''));

  // Show first 15 rows
  const maxRows = 15;
  const dataLines = lines.slice(1, maxRows + 1);
  const totalRows = lines.length - 1;

  let html = `<table style="font-size:13px;"><thead><tr>${displayHeaders.map(h => `<th>${escapeHtml(h)}</th>`).join('')}</tr></thead><tbody>`;

  for (const line of dataLines) {
    const cols = parseCSVLine(line);
    html += '<tr>';
    for (const idx of colIndices) {
      let val = cols[idx] || '';
      // Format cost
      if (headers[idx].includes('Cost')) {
        const num = parseFloat(val);
        val = isNaN(num) ? val : `$${num.toFixed(4)}`;
      }
      // Format date (truncate time)
      if (headers[idx].includes('Date')) {
        val = val.substring(0, 10);
      }
      html += `<td>${escapeHtml(val)}</td>`;
    }
    html += '</tr>';
  }

  html += '</tbody></table>';
  document.getElementById('cur-table-content').innerHTML = html;
  document.getElementById('cur-row-count').textContent =
    totalRows > maxRows ? `Showing ${maxRows} of ${totalRows} rows` : `${totalRows} rows`;
}

// ══════════════════════════════════════════════════════
// Utilities
// ══════════════════════════════════════════════════════

function parseCSVLine(line) {
  const result = [];
  let current = '';
  let inQuotes = false;
  for (let i = 0; i < line.length; i++) {
    const ch = line[i];
    if (ch === '"') {
      inQuotes = !inQuotes;
    } else if (ch === ',' && !inQuotes) {
      result.push(current);
      current = '';
    } else {
      current += ch;
    }
  }
  result.push(current);
  return result;
}

function markdownToHtml(md) {
  return md
    .replace(/^### (.+)$/gm, '<h4 style="margin:16px 0 8px;font-size:15px;">$1</h4>')
    .replace(/^## (.+)$/gm, '<h3 style="margin:20px 0 10px;font-size:17px;">$1</h3>')
    .replace(/^# (.+)$/gm, '<h2 style="margin:24px 0 12px;font-size:20px;">$1</h2>')
    .replace(/\*\*(.+?)\*\*/g, '<strong>$1</strong>')
    .replace(/`(.+?)`/g, '<code>$1</code>')
    .replace(/^- (.+)$/gm, '<li style="margin-left:20px;margin-bottom:4px;">$1</li>')
    .replace(/\n\n/g, '<br><br>')
    .replace(/\n/g, '<br>');
}
