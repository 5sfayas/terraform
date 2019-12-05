This tutorial spin-up ec2 instance in different availablity zone including VPC, Private and Public subnets along with Attached EBS Volume
 
 Availablity zone there  (assume it)
 on each AZ I create Public Subnet and Private Subnet
 VPC CIDR (10.0.0.0/16)
 
 AZ1= main-public-1			main-private-1
	ip range 10.0.1/24		ip range 10.0.4/24
	
 AZ2= main-public-2			main-private-1
	ip range 10.0.2/24		ip range 10.0.5/24
 
 AZ3= main-public-3			main-private-1
	ip range 10.0.1/24		ip range 10.0.5/24
	
I create Internet gateway to connect all public instances to internet. but i did not create any routing table to private instances (i'll cover later)

	
	