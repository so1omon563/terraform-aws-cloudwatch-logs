provider "aws" {
  default_tags {
    tags = {
      environment = "dev"
      terraform   = "true"
    }
  }
}

module "cw_logs" {
  source  = "so1omon563/cloudwatch-logs/aws"
  version = "1.0.0" # Replace with appropriate version
  # source = "../../"

  name = "example-group"
  tags = {
    example = "true"
  }
  group_prefix = "my-product-name"
}
