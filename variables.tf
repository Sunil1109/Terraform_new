variable "root_s3-bucket-name" {
   type = string
   default = "my-s3-bucket-5454645456545"
}

variable "root_sse_algorithm" {
   type = string
   default = "AES256"
}

variable "root_dynamodb_name" {
   type = string
   default = "state_file_locking1"
}

variable "root_hash_key" {
   type = string
   default = "LockID"
}

variable "root_instance_type" {
  type = string
  default = "t2.micro"
}

variable "root_key_name" {
  type = string
  default = "ec2.pem"
}

variable "root_filepath" {
  type = string
  default = "./file/key.pem"
}