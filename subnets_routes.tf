# Create Web Subnet association with Web route table
resource "aws_route_table_association" "rt_association" {
  count          = var.item_count
  subnet_id      = aws_subnet.web-subnet[count.index].id
  route_table_id = aws_route_table.web-rt.id
}