terraform {
  required_providers {
    aws = {
        # source  = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "my-s3-bucket-5454645456545"
    key    = "state/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "state_file_locking1"
  }
}