variable "ingress_rules" {
  description = "Ingress rules declaration for Sec Group"
  type = map(object({
    description = string
    cidr_blocks = list(string)
    }
  ))
  default = {
    22 = {
      description = "Incoming traffic to port 22"
      cidr_blocks = ["182.16.214.2/32", "10.0.0.0/24"]
    },
    80 = {
      description = "Incoming traffic to port 80"
      cidr_blocks = ["10.0.0.0/24"]
    },
    443 = {
      description = "Incoming traffic to port 443"
      cidr_blocks = ["10.0.0.0/24"]
    }
  }

}