provider "aws" {
  profile = "eng-dev"
  region  = "us-west-2"
}

resource "null_resource" "cluster" {

  }
