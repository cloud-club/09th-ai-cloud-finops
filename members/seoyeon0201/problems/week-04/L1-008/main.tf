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

resource "aws_ami" "ami-zinild" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-zinild"
  }
}
resource "aws_ami" "ami-b93zd4" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-b93zd4"
  }
}
resource "aws_ami" "ami-6xt7b7" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-6xt7b7"
  }
}
resource "aws_ami" "ami-kqhrhl" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-kqhrhl"
  }
}
resource "aws_ami" "ami-nyjiq1" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-nyjiq1"
  }
}
resource "aws_ami" "ami-tc9ara" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-tc9ara"
  }
}
resource "aws_ami" "ami-c95opi" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-c95opi"
  }
}
resource "aws_ami" "ami-15elwj" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-15elwj"
  }
}
resource "aws_ami" "ami-e5l5ub" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-e5l5ub"
  }
}
resource "aws_ami" "ami-0xmhqy" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-0xmhqy"
  }
}
resource "aws_ami" "ami-o7z5w6" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-o7z5w6"
  }
}
resource "aws_ami" "ami-dbgolw" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-dbgolw"
  }
}
resource "aws_ami" "ami-9itgsa" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-9itgsa"
  }
}
resource "aws_ami" "ami-4j1ra9" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-4j1ra9"
  }
}
resource "aws_ami" "ami-h45t6l" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-h45t6l"
  }
}
resource "aws_ami" "ami-q1fyj0" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-q1fyj0"
  }
}
resource "aws_ami" "ami-d6eyig" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-d6eyig"
  }
}
resource "aws_ami" "ami-11iipw" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-11iipw"
  }
}
resource "aws_ami" "ami-5vcz8s" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-5vcz8s"
  }
}
resource "aws_ami" "ami-o2c6g5" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-o2c6g5"
  }
}
resource "aws_ami" "ami-t96mng" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-t96mng"
  }
}
resource "aws_ami" "ami-74l9ip" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-74l9ip"
  }
}
resource "aws_ami" "ami-w26g0d" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-w26g0d"
  }
}
resource "aws_ami" "ami-xkxukh" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-xkxukh"
  }
}
resource "aws_ami" "ami-r8w8q2" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-r8w8q2"
  }
}
resource "aws_ami" "ami-kqwngt" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-kqwngt"
  }
}
resource "aws_ami" "ami-bhkzc9" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-bhkzc9"
  }
}
resource "aws_ami" "ami-ocpts7" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-ocpts7"
  }
}
resource "aws_ami" "ami-o5ib9h" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-o5ib9h"
  }
}
resource "aws_ami" "ami-37xkx5" {
  unused_days = 120
  snapshots_per_ami = 2
  total_snapshot_gb = 600

  tags = {
    Name = "ami-37xkx5"
  }
}
resource "aws_ebs_snapshot" "ebs-snapshot-qu6i22" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-qu6i22"

  tags = {
    Name = "ebs-snapshot-qu6i22"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-hldvy4" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-hldvy4"

  tags = {
    Name = "ebs-snapshot-hldvy4"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-svjksd" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-svjksd"

  tags = {
    Name = "ebs-snapshot-svjksd"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-p4jv6u" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-p4jv6u"

  tags = {
    Name = "ebs-snapshot-p4jv6u"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-5nnujy" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-5nnujy"

  tags = {
    Name = "ebs-snapshot-5nnujy"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-31q6un" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-31q6un"

  tags = {
    Name = "ebs-snapshot-31q6un"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-e2woco" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-e2woco"

  tags = {
    Name = "ebs-snapshot-e2woco"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-7gj7su" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-7gj7su"

  tags = {
    Name = "ebs-snapshot-7gj7su"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-9ql7wr" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-9ql7wr"

  tags = {
    Name = "ebs-snapshot-9ql7wr"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-b2ot7e" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-b2ot7e"

  tags = {
    Name = "ebs-snapshot-b2ot7e"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-ucd1qa" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-ucd1qa"

  tags = {
    Name = "ebs-snapshot-ucd1qa"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-6iqa2d" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-6iqa2d"

  tags = {
    Name = "ebs-snapshot-6iqa2d"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-08k00a" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-08k00a"

  tags = {
    Name = "ebs-snapshot-08k00a"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-n1dbe8" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-n1dbe8"

  tags = {
    Name = "ebs-snapshot-n1dbe8"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-x179zg" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-x179zg"

  tags = {
    Name = "ebs-snapshot-x179zg"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-24smys" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-24smys"

  tags = {
    Name = "ebs-snapshot-24smys"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-cbqte4" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-cbqte4"

  tags = {
    Name = "ebs-snapshot-cbqte4"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-a9kzjq" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-a9kzjq"

  tags = {
    Name = "ebs-snapshot-a9kzjq"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-njztx1" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-njztx1"

  tags = {
    Name = "ebs-snapshot-njztx1"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-rev9tm" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-rev9tm"

  tags = {
    Name = "ebs-snapshot-rev9tm"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-6spg8j" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-6spg8j"

  tags = {
    Name = "ebs-snapshot-6spg8j"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-o9ffm1" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-o9ffm1"

  tags = {
    Name = "ebs-snapshot-o9ffm1"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-p8wy60" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-p8wy60"

  tags = {
    Name = "ebs-snapshot-p8wy60"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-w473ek" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-w473ek"

  tags = {
    Name = "ebs-snapshot-w473ek"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-qbg94o" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-qbg94o"

  tags = {
    Name = "ebs-snapshot-qbg94o"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-3kejel" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-3kejel"

  tags = {
    Name = "ebs-snapshot-3kejel"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-8xl9na" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-8xl9na"

  tags = {
    Name = "ebs-snapshot-8xl9na"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-y4r42a" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-y4r42a"

  tags = {
    Name = "ebs-snapshot-y4r42a"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-w6o6sq" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-w6o6sq"

  tags = {
    Name = "ebs-snapshot-w6o6sq"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-f3fii9" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-f3fii9"

  tags = {
    Name = "ebs-snapshot-f3fii9"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-5r8ogu" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-5r8ogu"

  tags = {
    Name = "ebs-snapshot-5r8ogu"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-fmhe17" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-fmhe17"

  tags = {
    Name = "ebs-snapshot-fmhe17"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-ejs37u" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-ejs37u"

  tags = {
    Name = "ebs-snapshot-ejs37u"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-6r9nmh" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-6r9nmh"

  tags = {
    Name = "ebs-snapshot-6r9nmh"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-2gylao" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-2gylao"

  tags = {
    Name = "ebs-snapshot-2gylao"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-f3u9ck" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-f3u9ck"

  tags = {
    Name = "ebs-snapshot-f3u9ck"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-us7q2v" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-us7q2v"

  tags = {
    Name = "ebs-snapshot-us7q2v"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-qn92e1" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-qn92e1"

  tags = {
    Name = "ebs-snapshot-qn92e1"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-pg6ol6" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-pg6ol6"

  tags = {
    Name = "ebs-snapshot-pg6ol6"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-vmmosl" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-vmmosl"

  tags = {
    Name = "ebs-snapshot-vmmosl"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-hvqc6h" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-hvqc6h"

  tags = {
    Name = "ebs-snapshot-hvqc6h"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-2xyn2m" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-2xyn2m"

  tags = {
    Name = "ebs-snapshot-2xyn2m"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-kl61d4" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-kl61d4"

  tags = {
    Name = "ebs-snapshot-kl61d4"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-nddffl" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-nddffl"

  tags = {
    Name = "ebs-snapshot-nddffl"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-e4wad8" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-e4wad8"

  tags = {
    Name = "ebs-snapshot-e4wad8"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-9tbvkn" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-9tbvkn"

  tags = {
    Name = "ebs-snapshot-9tbvkn"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-hyujru" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-hyujru"

  tags = {
    Name = "ebs-snapshot-hyujru"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-7z75fr" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-7z75fr"

  tags = {
    Name = "ebs-snapshot-7z75fr"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-m8kuv2" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-m8kuv2"

  tags = {
    Name = "ebs-snapshot-m8kuv2"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-gmihwt" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-gmihwt"

  tags = {
    Name = "ebs-snapshot-gmihwt"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-evs8hr" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-evs8hr"

  tags = {
    Name = "ebs-snapshot-evs8hr"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-9i1gk0" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-9i1gk0"

  tags = {
    Name = "ebs-snapshot-9i1gk0"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-7vcx33" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-7vcx33"

  tags = {
    Name = "ebs-snapshot-7vcx33"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-trbv12" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-trbv12"

  tags = {
    Name = "ebs-snapshot-trbv12"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-ipnivk" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-ipnivk"

  tags = {
    Name = "ebs-snapshot-ipnivk"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-3xs8df" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-3xs8df"

  tags = {
    Name = "ebs-snapshot-3xs8df"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-xvhuqq" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-xvhuqq"

  tags = {
    Name = "ebs-snapshot-xvhuqq"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-9mgrfo" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-9mgrfo"

  tags = {
    Name = "ebs-snapshot-9mgrfo"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-muzpg5" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-muzpg5"

  tags = {
    Name = "ebs-snapshot-muzpg5"
  }
}

resource "aws_ebs_snapshot" "ebs-snapshot-rnk5th" {
  volume_id   = "vol-placeholder"
  description = "Snapshot ebs-snapshot-rnk5th"

  tags = {
    Name = "ebs-snapshot-rnk5th"
  }
}

resource "aws_ami" "ami-mxz2ak" {
  used_in_launch_template = true

  tags = {
    Name = "ami-mxz2ak"
  }
}
resource "aws_ami" "ami-mq8oq4" {
  used_in_launch_template = true

  tags = {
    Name = "ami-mq8oq4"
  }
}
resource "aws_ami" "ami-76e9ez" {
  used_in_launch_template = true

  tags = {
    Name = "ami-76e9ez"
  }
}
resource "aws_ami" "ami-kc3dla" {
  used_in_launch_template = true

  tags = {
    Name = "ami-kc3dla"
  }
}
resource "aws_ami" "ami-emlmg9" {
  used_in_launch_template = true

  tags = {
    Name = "ami-emlmg9"
  }
}
