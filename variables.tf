variable "aws_region" {
    type = string
    default = "us-east-1"
}

// Add the zone id in the tfvars file.
variable "zone_id" {
    type = string
}

// Add the domain name in the tfvars file.
variable "my_domain" {
    type = string
}

// Add the cname record for the domain in the tfvars file.
variable "cname" {
    type = string
}