variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "subnet_ids" {
  type    = list(string)

  default = ["subnet-0df4e95ff9c127c1b",
             "subnet-07339da85b14aea45",
             "subnet-0d12690c26f1a0d19"]
}