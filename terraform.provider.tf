terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIARW3V5XBMLIXQT7OR"
  secret_key = "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"
}
