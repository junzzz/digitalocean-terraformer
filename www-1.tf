resource "digitalocean_droplet" "www-1" {
    image = "centos-6-5-x64"
    name = "www-1"
    region = "sgp1"
    size = "512mb"
    private_networking = true
    ssh_keys = [
        "${var.ssh_fingerprint}"
    ]


    connection {
          user = "root"
          type = "ssh"
          key_file = "${var.pvt_key}"
          timeout = "2m"
    }
    
#    provisioner "remote-exec" {
#        inline = [
#          "export PATH=$PATH:/usr/bin",
#          "sudo yum update",
#          "sudo yum -y install nginx"
#        ]
#    }
}
