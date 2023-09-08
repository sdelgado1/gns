resource "aws_instance" "instance-test" {
    ami = "ami-071175b60c818694f"
    instance_type = "t3.medium"
    vpc_security_group_ids = module.vpc.vpc_id
    key_name = aws_key_pair.my-key.key_name
    associate_public_ip_address = true
}

resource "aws_key_pair" "my-key" {
  key_name = "cloud-test-key"
  public_key = file("cloud-test-key.pem")
}

resource "aws_eip" "ip" {
  vpc = true
}
