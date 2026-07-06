
variable "location" {

  description = "Azure region"

  type = string

  default = "East US"

}



variable "container_image" {

  description = "Docker image to deploy"

  type = string

  default = "amit03773/aj-nginx:latest"

}



variable "cpu" {

  description = "CPU cores for container"

  type = number

  default = 0.5

}



variable "memory" {

  description = "Memory in GB for container"

  type = number

  default = 0.5

}

