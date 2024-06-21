module "root_create_s3_bucket" {
    source = "./modules/s3"
    s3-bucket-name = var.root_s3-bucket-name
    sse_algorithm = var.root_sse_algorithm
}

module "root_create_dynamo_locking" {
     source = "./modules/dynamoDB"
     dynamodb_name = var.root_dynamodb_name
     hash_key = var.root_hash_key
}

module "root_create_ec2" {
     source = "./modules/ec2"
     instance_type = var.root_instance_type
     key_name = var.root_key_name
     filepath = var.root_filepath
}

module "root_remote_exec" {
     source = ""
}