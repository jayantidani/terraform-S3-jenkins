provider "aws" {
   region = "us-east-1"
}
resource "aws_s3_bucket" "my_bucket"{
    bucket = "jayanti-jenkins-terraform-bucket-9990"
    force_destroy = true
tags = {
    Name = "Jenkins-terraform-bucket"
 }
}