variable "token" {}

variable "secret-mounts" {
  default = {
    roboshop-dev = {
      description = "RoboShop Project Dev Secrets"
    }
  }
}


variable "secrets" {
  default = {
    cart = {
      sercet_mount = "roboshop-dev"
      kv = {
        zip       = "zap",
        foo       = "bar"
      }
    }
  }
}