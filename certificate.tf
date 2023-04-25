

resource "aws_acm_certificate" "test" {
  private_key = "${file("cert_sample.key")}"
  certificate_body = "${file("cert_sample.crt")}"
}