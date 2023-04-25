
provider "aws" {
  access_key                  = "XXXXXXXX"
  secret_key                  = "XXXXXXXX"
  region                      = "eu-west-1"
  insecure                    = "true"
  skip_metadata_api_check     = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true

  endpoints {
    acm         = "https://compute-uk-lon-101.zadara.com/api/v2/aws/acm/"
    ec2         = "https://compute-uk-lon-101.zadara.com/api/v2/aws/ec2/"
    elb         = "https://compute-uk-lon-101.zadara.com/api/v2/aws/elbv2/"
  }
}