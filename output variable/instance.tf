resource "aws_key_pair" "tom"{
key_name="tom"
public_key="${file("${var.PATH_TO_PUBLIC_KEY}")"
}

resource "aws_instance" "example"
{
ami="${lookup(var.AMIS, var.AWS_REGION)"
instance_type="t2.micro"
key_name="${aws_key_pair.tom.key_name}"

	provisioner "file"{
	source="script.sh"
	destination="~/fayasak/script.sh"
	}

	provisioner "remote-exec"{
	inline=[
	"chmod +x ~/fayasak/script.sh",
	"sudo ~/fayasak/script.sh"
	]
	}

	connection{
	user="${var.INSTANCE_USERNAME}"
	private_key="${file("${var.PATH_TO_PRIVATE_KEY}")}"
	}
	provisioner "local-exec"{
	command ="echo ${aws_instance.example.private_ip}>>instanceprivateip.txt"
		}
}
output "ip"{
	value="${aws_instance.example.public_ip}"
	}

