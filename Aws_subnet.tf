resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.vpc_subnet_cidr
  availability_zone = var.zone
  tags = {
    Name = var.project_name
  }
}