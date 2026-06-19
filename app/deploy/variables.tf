variable "cluster_name" {
  description = "Nome do cluster ECS"
  type        = string
  default     = "app-prod-cluster"
}

variable "desired_count" {
  description = "Número de tasks desejadas"
  type        = number
  default     = 3
}

variable "lb_name" {
  description = "Load Balancer Name"
  type        = string
  default     = "app-prod-nlb"
}

variable "subnets_id" {
  description = "Lista de subnets para o serviço ECS"
  type        = list(string)
}
