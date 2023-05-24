resource "aws_vpc_dhcp_options" "cbtnuggets-dhcp" {
  domain_name = "cbtnuggets.local"
  domain_name_servers = [
    "8.8.8.8",
    "8.8.4.4"
  ]
  ntp_servers = ["10.9.5.6"]
}

resource "aws_vpc_dhcp_options_association" "cbt-dhcp-assoc" {
  vpc_id = aws_vpc.cbtnuggets-vpc.id
  dhcp_options_id = aws_vpc_dhcp_options.cbtnuggets-dhcp.id
}