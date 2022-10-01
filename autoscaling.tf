
resource "aws_autoscaling_group" "auto_scalling_group" {

  name = var.auto_scalling_group_name

  max_size = var.max_size

  min_size = var.min_size

  health_check_grace_period = var.health_check
  
  health_check_type         = var.check_type

  desired_capacity = var.desired_capacity
  
  availability_zones = var.availability_zones
  
  launch_template {
    id      = var.template_id
  }

  force_delete = true
  

  lifecycle {

    create_before_destroy = true
  }
}

