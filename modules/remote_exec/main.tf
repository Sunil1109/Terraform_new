resource "null_resource" "remote_exec" {
  connection {
    type = "ssh"
    user = var.user_name
    agent = false
    host = var.ec2_public_key
    private_key = var.key_path
  }

  provisioner "remote-exec" {
    inline = [ 
            "sudo apt update -y",
            "sudo apt-get install ca-certificates curl -y",
            "sudo install -m 0755 -d /etc/apt/keyrings",
            "sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc",
            "sudo chmod a+r /etc/apt/keyrings/docker.asc",
            "echo \"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo \"$VERSION_CODENAME\") stable\" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null",
            "sudo apt-get update -y",
            "sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin"
     ]
  }
}