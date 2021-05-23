locals {
  subnets     = var.environment_type == "SingleInstance" ? data.aws_subnet_ids.public_subnets : data.aws_subnet_ids.private_subnets
  elb_subnets = data.aws_subnet_ids.public_subnets
}

data "aws_vpc" "selected" {
  tags = {
    Name = var.vpc_name
  }
}

data "aws_subnet_ids" "public_subnets" {
  vpc_id = data.aws_vpc.selected.id

  tags = {
    Type = "Public"
  }
}

data "aws_subnet_ids" "private_subnets" {
  vpc_id = data.aws_vpc.selected.id

  tags = {
    Type = "Private"
  }
}
