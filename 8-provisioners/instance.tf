resource "aws_key_pair" "ec2_key" {
  key_name   = "ec2-key-pair"
  public_key = file("~/.ssh/ec2-key.pub")
}

resource "aws_instance" "ec2_instance" {
  ami                    = "ami-079db87dc4c10ac91"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.ec2_key.key_name
  vpc_security_group_ids = [aws_security_group.instance_sg.id]
  user_data              = file("./script.sh")
  tags = {
    Name = "terraform-instance"
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> ${self.tags["Name"]}.txt"
  }
  provisioner "local-exec" {
    command = "echo ${self.arn} >> ${self.tags["Name"]}.txt"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    host        = self.public_ip
    private_key = file("~/.ssh/ec2-key")
  }
  provisioner "remote-exec" {
    inline = [
      "echo \"Executing remote command on the new ec2 instance\" >> /var/tmp/remote-exec.txt",
    ]
  }
  provisioner "file" {
    source      = "terraform-instance.txt"
    destination = "/var/tmp/terraform-instance.txt"
  }
}

