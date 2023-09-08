resource "aws_ebs_volume" "ebs" {
  availability_zone = var.azs
  size = 18
}

resource "aws_volume_attachment" "attachment" {
  device_name = "/dev/sdf"
  volume_id = aws_ebs_volume.ebs.id
  instance_id = aws_instance.instance-test.id
}