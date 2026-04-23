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

resource "aws_glue_catalog_table" "glue-catalog-table-maq67x" {
  database_name = "analytics_db"
  table_name = "raw_events"
  storage_location = "s3://data-lake-prod/raw_events/"
  total_data_size_tb = 10
  format = "parquet"

  tags = {
    Name = "glue-catalog-table-maq67x"
  }
}
resource "aws_s3_bucket" "s3-bucket-5jz4ui" {
  bucket = "data-lake-prod"

  tags = {
    Name        = "data-lake-prod"
  }
}

resource "aws_glue_catalog_table" "glue-catalog-table-pyjqak" {
  database_name = "analytics_db"
  table_name = "processed_events"
  storage_location = "s3://data-lake-prod/processed_events/"
  total_data_size_tb = 8
  format = "parquet"

  tags = {
    Name = "glue-catalog-table-pyjqak"
  }
}
