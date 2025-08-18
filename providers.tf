#terraform {
 # backend "s3" {
  #  bucket         = "my-devops-backup-shradhsh123"
   # key            = "terraform/state"
    #region         = "us-east-1"
    # dynamodb_table = "state-lock-table"
    
  #}

  #required_providers {
   # aws = {
    #  source  = "hashicorp/aws"
     # version = "~> 6.9.0"
    #}
  #}
#}

provider "aws" {
  region = "us-east-1"
  
}