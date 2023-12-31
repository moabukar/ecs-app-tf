variable "prefix" {
  default = "raad"
}

variable "project" {
  default = "recipe-app-api-devops"
}

variable "contact" {
  default = "email@londonappdev.com"
}

variable "db_username" {
  description = "Username for the RDS postgres instance"
}

variable "db_password" {
  description = "Password for the RDS postgres instance"
}

variable "bastion_key_name" {
  default = "recipe-app-api-devops-bastion"
}

variable "ecr_image_api" {
  description = "ECR image for API"
  default     = "<Account_ID>.dkr.ecr.eu-west-2.amazonaws.com/<ECR_REPO>:latest"
}

variable "ecr_image_proxy" {
  description = "ECR image for proxy"
  default     = "<Account_ID>.dkr.ecr.eu-west-2.amazonaws.com/<ECR_REPO>:latest"
}

variable "django_secret_key" {
  description = "Secret key for Django app"
}

variable "dns_zone_name" {
  description = "Domain name"
  # default     = "google.com"
}

variable "subdomain" {
  description = "Subdomain per environment"
  type        = map(string)
  default = {
    production = "api"
    staging    = "api.staging"
    dev        = "api.dev"
  }
}
