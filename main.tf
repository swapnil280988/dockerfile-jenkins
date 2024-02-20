terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.37.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "jenkins" {
  ami                     = "ami-0e670eb768a5fc3d4"
  instance_type           = "t2.micro"
  associate_public_ip_address = true
  key_name = "aws-new"
  vpc_security_group_ids = [ "sg-0b33daa15e7f9d1df" ]
  root_block_device {
    volume_size = 8
  }

  tags = {
    Name = "Jenkins-slave"
  }

  connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("C:\\Users\\swapnil.bawankar\\Downloads\\aws-new.pem")
    host     = aws_instance.jenkins.public_ip
  }

  provisioner "remote-exec" {
    inline = [
        "sudo yum install docker -y",
        "sudo systemctl start docker",
        "sudo yum install java -y",
        "sudo yum install git -y",
        "mkdir -p /home/ec2-user/myjenkins"
    ]
  }

}

