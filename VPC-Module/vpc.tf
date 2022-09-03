# Module for VPC
module "my_terraform_vpc" {
    source = "terraform-aws-modules/vpc/aws"
    version = "3.14.3"

# VPC Basic Details
    name = "VPC-Module-Dev"
    cidr = "10.0.0.0/16"
    azs                  = ["us-east-1a", "us-east-1b"]
    private_subnets      = ["10.0.1.0/24", "10.0.2.0/24"]
    public_subnets       = ["10.0.101.0/24", "10.0.102.0/24"]

# Database Subnets
    create_database_subnet_group = true
    create_database_subnet_route_table = true
    database_subnets     = ["10.0.21.0/24", "10.0.22.0/24"]

# NAT Gateways
    enable_nat_gateway = true
    single_nat_gateway = true

# VPC DNS Parameters
    enable_dns_hostnames = true
    enable_dns_support = true

    public_subnet_tags = {
        Name = "public-subnets"
    }

    private_subnet_tags = {
        Name = "private-subnets"
    }

    database_subnet_tags = {
        Name = "database-subnets"
    }

    tags = {
        Owner = "Kunal"
        Environment = "Dev"
    }

    vpc_tags = {
        Name = "vpc-dev"
    }
    

}

