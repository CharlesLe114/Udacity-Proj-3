resource "aws_db_instance" "postgres" {
  allocated_storage    = 20
  identifier           = "postgres"
  engine               = "postgres"
  engine_version       = "12.9"
  instance_class       = "db.t3.micro"
  db_name              = "postgres"
  username             = "postgres"
  password             = "Mat58Xob0FUg"
  skip_final_snapshot  = true
  publicly_accessible  = true
}

output "db_endpoint" {
  value = aws_db_instance.postgres.endpoint
}

########### S3 BUCKET ######################
resource "aws_s3_bucket" "udapeople" {
  bucket               = "udapeople-nkpyrkndyc"

  tags = {
    Name        = "udapeople-nkpyrkndyc"
    Project     = "third-CICD"
  }
}

resource "aws_s3_bucket_acl" "publicly_accessible" {
  bucket = aws_s3_bucket.udapeople.id
  acl    = "public-read"
}