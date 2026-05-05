terraform {
  required_version = ">= 1.0"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

provider "random" {}

resource "random_pet" "server" {
  length    = 2
  separator = "-"
}

resource "random_pet" "database" {
  length    = 3
  separator = "_"
  prefix    = "db"
}

resource "random_pet" "cluster" {
  count = var.pet_count

  length    = 2
  separator = "-"
  prefix    = "node"
}

resource "null_resource" "boom" {
  provisioner "local-exec" {
    command = "exit 1"
  }
}
