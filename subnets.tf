# Create Web Public Subnet
resource "aws_subnet" "web-subnet" {
  count                   = var.item_count
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.web_subnet_cidr[count.index]
  availability_zone       = var.availability_zone_names[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "Public-Web-${count.index}"
  }
}



