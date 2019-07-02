# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# DEPLOY A WEBSERVER CLUSTER USING THE WEBSERVER-CLUSTER MODULE
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ----------------------------------------------------------------------------------------------------------------------
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# This module has been updated with 0.12 syntax, which means it is no longer compatible with any versions below 0.12.
# ----------------------------------------------------------------------------------------------------------------------

terraform {
  required_version = ">= 0.12"
}

# ------------------------------------------------------------------------------
# CONFIGURE OUR AWS CONNECTION
# ------------------------------------------------------------------------------

provider "aws" {
  region = "us-east-2"
}

# ------------------------------------------------------------------------------
# DEPLOY THE WEBSERVER-CLUSTER MODULE
# ------------------------------------------------------------------------------

module "webserver_cluster" {
  source = "../../../../modules/services/webserver-cluster"

  cluster_name  = "webservers-stage"
  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 2
}