resource "aws_internet_gateway" "cbtnuggets-gateway" {
  tags = {
    Name = "cbtnuggets-igw"
  }
}

resource "aws_internet_gateway_attachment" "cbtnuggets-igw-attach" {
  internet_gateway_id = aws_internet_gateway.cbtnuggets-gateway.id
  vpc_id = aws_vpc.cbtnuggets-vpc.id
}