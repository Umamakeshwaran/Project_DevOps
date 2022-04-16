resource "aws_instance" "main" {
  ami               = "ami-01e00fd740a7ea210"
  instance_type     = "t2.micro"
  availability_zone = "ap-south-1a"
  security_groups   =  ["${aws_security_group.main.name}"]
  //vpc_security_group_ids = aws_vpc.main.id
  key_name = "Umamakeswaran-in"
  user_data = <<-EOF

     #!/bin/bash
sudo -i
yum install httpd -y
wget https://www.free-css.com/assets/files/free-css-templates/download/page276/petlover.zip
unzip petlover.zip
cd pet-care-website-template/
cp -rf * /var/www/html/
systemctl restart httpd
systemctl enable httpd
date

  EOF


  tags = {
    Name = var.project_name
  }

}
