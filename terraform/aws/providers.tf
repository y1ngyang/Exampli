
provider "aws" {
  profile = var.profile
  region  = var.region
}

provider "aws" {
  alias      = "plain_text_access_keys_provider"
  region     = "us-west-1"
  access_key = "not here anymore"
  secret_key = "not here anymore"
}

terraform {
  backend "s3" {
    encrypt = true
  }
}
