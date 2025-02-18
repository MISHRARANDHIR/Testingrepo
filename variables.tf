variable "aws_region" {
  type        = string
  description = "Name of the deployment aws region"
  default = "us-east-1"
}


variable "environment" {
  type        = string
  description = "Name of the deployment environment"
  default = ""
}

variable "aws_ecs_cluster_config" {
  type        = any
  description = "Map containing properties and configuration for the ecs cluster"
  default     = {}
}

variable "aws_ecs_services_config" {
  type        = any
  description = "Map containing properties and configuration for the ecs service"
  default     = {}
}

variable "aws_alb_config" {
  type        = any
  description = "Contains all the configuration values of application load balancer."
  default     = {}
}

variable "aws_alb_config_1" {
  type        = any
  description = "Contains all the configuration values of application load balancer."
  default     = {}
}

variable "aws_alb_config_2" {
  type        = any
  description = "Contains all the configuration values of application load balancer."
  default     = {}
}


variable "aws_alb_config_3" {
  type        = any
  description = "Contains all the configuration values of application load balancer."
  default     = {}
}


variable "aws_alb_config_4" {
  type        = any
  description = "Contains all the configuration values of application load balancer."
  default     = {}
}


variable "aws_alb_config_5" {
  type        = any
  description = "Contains all the configuration values of application load balancer."
  default     = {}
}

variable "aws_alb_config_6" {
  type        = any
  description = "Contains all the configuration values of application load balancer."
  default     = {}
}

variable "aws_rds_cluster_config" {
  type        = any
  description = "Map containing properties and configuration for the rds mysql cluster"
  default     = {}
}


variable "aws_rds_cluster_tags" {
  type        = any
  description = "Map containing tags for the rds mysql cluster"
  default     = {}
}




