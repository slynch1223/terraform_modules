resource "aws_vpc" "this" {
  #checkov:skip=CKV2_AWS_11:Not needed for testing

  cidr_block = var.cidr_block
}

resource "aws_default_security_group" "this" {
  vpc_id = aws_vpc.this.id
}
