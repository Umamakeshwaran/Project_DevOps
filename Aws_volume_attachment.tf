resource "aws_volume_attachment" "NewInstanceId-vol" {
  device_name = "/dev/sdc"
  volume_id = aws_ebs_volume.data-vol.id
  instance_id = aws_instance.main.id
}
