resource "aws_instance" "ansible" {
  ami                    = data.aws_ami.rhel.id
  instance_type          = var.instance-type-ansible
  key_name               = var.key-name
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  user_data              = file("ansible-script.sh")

  tags = {
    Name = "Ansible"
  }
}
resource "aws_key_pair" "keypair" {
  key_name   = var.key-name
  public_key = file("ssh-key.pub")
}
resource "aws_eip" "eip_all" {
  instance = aws_instance.ansible.id
  vpc      = true
}

resource "aws_eip" "eip_jenkins" {
  instance = aws_instance.jenkins.id
  vpc      = true
}
resource "aws_eip" "eip_k8s" {
  instance = aws_instance.k8s.id
  vpc      = true
} 
resource "aws_instance" "jenkins" {
  ami                    = data.aws_ami.rhel.id
  instance_type          = var.instance-type-jenkins
  key_name               = var.key-name
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "Jenkins"
  }
}
resource "aws_instance" "k8s" {
  ami                    = data.aws_ami.rhel.id
  instance_type          = var.instance-type-k8s
  key_name               = var.key-name
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "Kubernetes"
  }
}