output "jenkins_instance_public_ip" {
  value = aws_instance.jenkins.public_ip
}
output "kubernetes_instance_public_ip" {
  value = aws_instance.k8s.public_ip
}
output "ansible_instance_public_ip" {
  value = aws_instance.ansible.public_ip
}