variable "instance_name" {
 description = "Value of the EC2 instnce's Name tag."
 type	     = string
 default     = "learn-terraform"
}

variable "instance_type" {
 description = "The EC2 instance's type."
 type        = string
 default     = "t3.micro"
}
