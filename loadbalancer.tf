

resource "aws_alb_listener" "test" {
  // using an existing load balancer
  load_balancer_arn = "0a5980a9-59f5-4738-83c0-520972f3e767"

  port = 443
  protocol = "HTTPS"
  certificate_arn = aws_acm_certificate.test.arn

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "Fixed response content"
      status_code  = "200"
    }
  }
}



resource "aws_lb_listener_certificate" "rocket-s3" {
  listener_arn    = aws_alb_listener.test.arn
  certificate_arn =  aws_acm_certificate.test.arn
}