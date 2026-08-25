output "instance_public_ip" {
  description = "Public IP of the nginx EC2 instance"
  value       = aws_instance.nginx_new.public_ip
}

output "ssh_command" {
  description = "Command to SSH into the instance"
  value       = "ssh -i internship.pem ubuntu@${aws_instance.nginx_new.public_ip}"
}
