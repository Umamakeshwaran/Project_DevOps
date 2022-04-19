resource "aws_ebs_volume" "data-vol" {
  availability_zone = var.zone
  size = 24
  tags = {
    Name = var.project_name
  }

}