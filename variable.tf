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
        REDIS_HOST     = "redis-dev.maidevops.fun"
        CATALOGUE_HOST = "catalogue-dev.maidevops.fun"
        CATALOGUE_PORT = "8080"
      }
    }

    frontend = {
      sercet_mount = "roboshop-dev"
      kv = {
        CATALOGUE_URL    = "http://catalogue-dev.maidevops.fun:8080/"
        USER_URL         = "http://user-dev.maidevops.fun:8080/"
        CART_URL         = "http://cart-dev.maidevops.fun:8080/"
        SHIPPING_URL     = "http://shipping-dev.maidevops.fun:8080/"
        PAYMENT_URL      = "http://payment-dev.maidevops.fun:8080/"
        CATALOGUE_HOST   = "catalogue-dev.maidevops.fun"
        CATALOGUE_PORT   = "8080"
        USER_HOST        = "user-dev.maidevops.fun"
        USER_PORT        = "8080"
        CART_HOST        = "cart-dev.maidevops.fun"
        CART_PORT        = "8080"
        SHIPPING_HOST    = "shipping-dev.maidevops.fun"
        SHIPPING_PORT    = "8080"
        PAYMENT_HOST     = "payment-dev.maidevops.fun"
        PAYMENT_PORT     = "8080"
      }
    }

    catalogue = {
      sercet_mount = "roboshop-dev"
      kv = {
        MONGO           = "true"
        MONGO_URL       = "mongodb://mongodb-dev.maidevops.fun:27017/catalogue"

        DB_TYPE         = "mongo"
        APP_GIT_URL     = "https://github.com/roboshop-devops-project-v3/catalogue"
        DB_HOST         = "mongodb-dev.maidevops.fun"
        SCHEMA_FILE     = "db/master-data.js"
      }
    }

    user = {
      sercet_mount = "roboshop-dev"
      kv = {
        MONGO           = "true"
        REDIS_URL       = "redis://redis-dev.maidevops.fun:6379"
        MONGO_URL       = "mongodb://mongodb-dev.maidevops.fun:27017/users"
      }
    }

    mysql = {
      sercet_mount = "roboshop-dev"
      kv = {
        ROOT_PASSWORD     = "RoboShop@1"
      }
    }

    rabbitmq = {
      sercet_mount = "roboshop-dev"
      kv = {
        APP_USER           = "roboshop"
        APP_PASSWORD       = "roboshop123"
      }
    }

  }
}
