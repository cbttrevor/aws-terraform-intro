resource "aws_subnet" "cbtnuggets-public" {
  cidr_block = "10.9.5.0/24"
  vpc_id = aws_vpc.cbtnuggets-vpc.id

  tags = {
    Name = "subnet-public"
  }
}