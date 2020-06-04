#
# Set minimum Terraform version and Terraform Cloud backend
#
terraform {
  required_version = ">= 0.12"
}

#
# Configure AWS provider for AWS Profile / Role
#
// provider aws {
//   region                 = var.region
//   profile                = var.aws_profile # alternatively, set AWS_PROFILE environment variable.
//   assume_role {
//     role_arn             = var.aws_auth_assume_role_arn
//   }
// }

# configure AWS provider for env variables
provider aws {
  region                 = var.region
}

#
# Create a random id
#
resource "random_id" "id" {
  byte_length = 2
}
