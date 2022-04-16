resource "aws_ebs_volume" "data-vol" {
  availability_zone = "ap-south-1a"
  size = 24
  tags = {
    Name = var.project_name
  }

}