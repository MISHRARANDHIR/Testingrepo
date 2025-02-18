terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.49"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "alb" {
  source = "git::git@github.com:Liaison-Intl/terraform-module-lb.git?ref=develop"
  aws_lb_cluster_config = var.aws_alb_config
  environment = var.environment
}

module "alb_1" {
  source = "git::git@github.com:Liaison-Intl/terraform-module-lb.git?ref=develop"
  aws_lb_cluster_config = var.aws_alb_config_1
  environment = var.environment
}


module "alb_2" {
  source = "git::git@github.com:Liaison-Intl/terraform-module-lb.git?ref=develop"
  aws_lb_cluster_config = var.aws_alb_config_2
  environment = var.environment
}

module "alb_3" {
  source = "git::git@github.com:Liaison-Intl/terraform-module-lb.git?ref=develop"
  aws_lb_cluster_config = var.aws_alb_config_3
  environment = var.environment
}

module "alb_4" {
  source = "git::git@github.com:Liaison-Intl/terraform-module-lb.git?ref=develop"
  aws_lb_cluster_config = var.aws_alb_config_4
  environment = var.environment
}

module "alb_5" {
  source = "git::git@github.com:Liaison-Intl/terraform-module-lb.git?ref=develop"
  aws_lb_cluster_config = var.aws_alb_config_5
  environment = var.environment
}

module "alb_6" {
  source = "git::git@github.com:Liaison-Intl/terraform-module-lb.git?ref=develop"
  aws_lb_cluster_config = var.aws_alb_config_6
  environment = var.environment
}


module "ecs" {
  source = "git::git@github.com:Liaison-Intl/terraform-module-ecs.git?ref=develop"
   aws_ecs_cluster_config   = var.aws_ecs_cluster_config
   fargate_capacity_providers = lookup(var.aws_ecs_services_config, "fargate_capacity_providers", "")
   services = lookup(var.aws_ecs_services_config, "services", "")
}
