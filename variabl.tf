
variable "auto_scalling_group_name" {
    default = "cfn_asg"
}
variable "max_size" {
    default = 5
}
variable "min_size" {
    default = 2
}
variable "health_check" {
    default = 300
}
variable "check_type" {
     default = Ec2
}
variable "desired_capacity" {
    default = 3
}
variable "availability_zones" {
    default = "us-east-2a,us-east-2b"
}
variable "template_id" {
    default = "lt-035ebb2f85f28e834"
}
