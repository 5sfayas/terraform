This demo shows how to spin-up aws ec2 instance using terraform

terraform.tfvars=my original key placed (I ignored)
vars.tf=variable where I reference my key (variable stand for to kide keys)
provider.tf= my secret key variable placed to refer here
instance.tf=code to create instance

every thing is placed first check with (terraform plan) then run with command terraform apply to spin up

how to apply AMI ID based on a default region
=> this need to configure two file 
1.vars.tf
2.instance.tf

tutorial two explain how to provision instance
=> this tutorial show upload a script to instance
1.log instance and upload file thats the idea
so, create key in a specific directory using ssh-keygen -f
then specify pub,pri key path on vars.tf
then create a provisioner "file" block and specify where to upload in instance.tf



