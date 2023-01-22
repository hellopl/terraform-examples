provider "aws" {
    access_key = "AKIAWL4MC4FW7UUOGVC5"
    secret_key = "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"
    region     = "eu-north-1"
}


resource "aws_instance" "amiLinux" {
    ami = "ami-07bdb714a483cb3bc"
    instance_type = "t3.micro"
}