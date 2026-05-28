variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-1"
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "cmtr-qxgoe9r5-01-vpc"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.10.0.0/16"
}

variable "public_subnets" {
  description = "Public subnet configuration along with cidr and availability zone"
  type = list(object({
    name = string
    cidr = string
    az   = string
  }))

  default = [
    {
      name = "cmtr-qxgoe9r5-01-subnet-public-a"
      cidr = "10.10.1.0/24"
      az   = "eu-west-1a"
    },
    {
      name = "cmtr-qxgoe9r5-01-subnet-public-b"
      cidr = "10.10.3.0/24"
      az   = "eu-west-1b"
    },
    {
      name = "cmtr-qxgoe9r5-01-subnet-public-c"
      cidr = "10.10.5.0/24"
      az   = "eu-west-1c"
    }
  ]
}

variable "igw_name" {
  description = "Internet gateway name"
  type        = string
  default     = "cmtr-qxgoe9r5-01-igw"
}

variable "route_table_name" {
  description = "Route table name"
  type        = string
  default     = "cmtr-qxgoe9r5-01-rt"
}