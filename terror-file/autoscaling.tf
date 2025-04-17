resource "aws_launch_configuration" "web" {
  name          = "web_config"
  image_id      = "ami-12345678"
  instance_type = "t3.micro"
}
resource "aws_autoscaling_group" "asg" {
  launch_configuration = aws_launch_configuration.web.id
  min_size             = 1
  max_size             = 5
  desired_capacity     = 2

  tag {
    key                 = "Name"
    value               = "AutoScalingGroup"
    propagate_at_launch = true
  }
}
