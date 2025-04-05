provider "aws" {
  region = "us-east-2"
}

module "tf_state" {
  source      = "../../modules/s3_bucket"
  bucket_name = "test-s3-bucket-for-terraform"
  versioning  = "Enabled"
}