terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# ══════════════════════════════════════════════════════════════════════════════
# FINOPS-EBS: BULK ORPHANED SNAPSHOT CLEANUP
# ══════════════════════════════════════════════════════════════════════════════
#
# 200 of 210 aws_ebs_snapshot resources have SourceVolumeStatus = "deleted".
# These are orphaned snapshots whose source volumes have been terminated.
# They consume ~399,590 GB of storage costing $19,979.49/month ($239,753.88/yr).
#
# ACTION REQUIRED — these resources must be removed from both AWS and Terraform state.
#
# ── Step 1: Safety Check (verify no AMI depends on these snapshots) ──────────
#
#   aws ec2 describe-images --owner-ids self \
#     --filters Name=block-device-mapping.snapshot-id,Values=<snapshot-id> \
#     --query 'Images[*].{ID:ImageId,Name:Name}'
#
# ── Step 2: Bulk delete from AWS ─────────────────────────────────────────────
#
#   aws ec2 describe-snapshots --owner-ids self \
#     --filters Name=tag:SourceVolumeStatus,Values=deleted \
#     --query 'Snapshots[*].SnapshotId' --output text | \
#     tr '\t' '\n' | \
#     xargs -I{} aws ec2 delete-snapshot --snapshot-id {}
#
# ── Step 3: Remove from Terraform state ──────────────────────────────────────
#
#   terraform state list | grep aws_ebs_snapshot | \
#     grep -v -E "(ni4cgp|qf68bu|h8dmqx|n890mr|6fg7mo|oi731n|dx2s4q|2g4ec2|t6vdat|t3g6n3)" | \
#     xargs -I{} terraform state rm {}
#
# ══════════════════════════════════════════════════════════════════════════════
# RETAINED SNAPSHOTS (SourceVolumeStatus = "exists") — 10 of 210
# ══════════════════════════════════════════════════════════════════════════════

resource "aws_ebs_snapshot" "ebs-snapshot-ni4cgp" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-ni4cgp"

  tags = {
    Name               = "ebs-snapshot-ni4cgp"
    SourceVolumeStatus = "exists"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-qf68bu" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-qf68bu"

  tags = {
    Name               = "ebs-snapshot-qf68bu"
    SourceVolumeStatus = "exists"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-h8dmqx" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-h8dmqx"

  tags = {
    Name               = "ebs-snapshot-h8dmqx"
    SourceVolumeStatus = "exists"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-n890mr" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-n890mr"

  tags = {
    Name               = "ebs-snapshot-n890mr"
    SourceVolumeStatus = "exists"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-6fg7mo" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-6fg7mo"

  tags = {
    Name               = "ebs-snapshot-6fg7mo"
    SourceVolumeStatus = "exists"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-oi731n" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-oi731n"

  tags = {
    Name               = "ebs-snapshot-oi731n"
    SourceVolumeStatus = "exists"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-dx2s4q" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-dx2s4q"

  tags = {
    Name               = "ebs-snapshot-dx2s4q"
    SourceVolumeStatus = "exists"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-2g4ec2" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-2g4ec2"

  tags = {
    Name               = "ebs-snapshot-2g4ec2"
    SourceVolumeStatus = "exists"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-t6vdat" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-t6vdat"

  tags = {
    Name               = "ebs-snapshot-t6vdat"
    SourceVolumeStatus = "exists"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-t3g6n3" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-t3g6n3"

  tags = {
    Name               = "ebs-snapshot-t3g6n3"
    SourceVolumeStatus = "exists"
  }
}