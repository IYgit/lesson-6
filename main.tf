provider "aws" {
  region = "eu-central-1"
}

module "s3_backend" {
  source      = "./modules/s3_backend"
  bucket_name = "terraform-state-ivan-yanchyk-lesson5-dev"
  dynamodb_table_name  = "terraform-locks"
  environment = "dev"
}


# Модуль VPC
module "vpc" {
  source = "./modules/vpc"

  environment         = "dev"
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnet_cidrs = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  availability_zones = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}

# Модуль ECR
module "ecr" {
  source          = "./modules/ecr"
  environment     = "dev"
  repository_name = "lesson-5-app"
  scan_on_push    = true
}