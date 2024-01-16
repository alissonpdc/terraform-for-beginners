# Get info from AWS filtering by specific value
# https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpcs.html
data "aws_vpc" "default_vpc" {
  filter {
    name = "is-default"
    values = [ true  ]
  }
  # Option to filter by tags
  # tags = {
  #   service = "production"
  # }
}