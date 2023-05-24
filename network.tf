resource "aws_vpc" "cbtnuggets-vpc" {
  cidr_block = "10.9.0.0/16"
  tags = {
    Name = "cbtnuggets-vpc01"
  }
}