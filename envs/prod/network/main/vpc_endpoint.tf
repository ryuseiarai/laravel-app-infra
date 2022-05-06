resource "aws_vpc_endpoint" "ecr_dkr" {
  service_name        = data.aws_vpc_endpoint_service.ecr_dkr.service_name
  vpc_id              = aws_vpc.this.id
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true
  subnet_ids          = [for s in aws_subnet.private : s.id]
  security_group_ids  = [aws_security_group.vpc.id]

  tags = {
    "Name" = "${local.name_prefix}-ecr-dkr"
  }
}

resource "aws_vpc_endpoint" "ecr_api" {
  service_name        = data.aws_vpc_endpoint_service.ecr_api.service_name
  vpc_id              = aws_vpc.this.id
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true
  subnet_ids          = [for s in aws_subnet.private : s.id]
  security_group_ids  = [aws_security_group.vpc.id]

  tags = {
    "Name" = "${local.name_prefix}-ecr-api"
  }
}

resource "aws_vpc_endpoint" "logs" {
  service_name        = data.aws_vpc_endpoint_service.logs.service_name
  vpc_id              = aws_vpc.this.id
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true
  subnet_ids          = [for s in aws_subnet.private : s.id]
  security_group_ids  = [aws_security_group.vpc.id]

  tags = {
    "Name" = "${local.name_prefix}-logs"
  }
}

resource "aws_vpc_endpoint" "ssm" {
  service_name        = data.aws_vpc_endpoint_service.ssm.service_name
  vpc_id              = aws_vpc.this.id
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true
  subnet_ids          = [for s in aws_subnet.private : s.id]
  security_group_ids  = [aws_security_group.vpc.id]

  tags = {
    "Name" = "${local.name_prefix}-ssm"
  }
}

resource "aws_vpc_endpoint" "ssmmessages" {
  service_name        = data.aws_vpc_endpoint_service.ssmmessages.service_name
  vpc_id              = aws_vpc.this.id
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true
  subnet_ids          = [for s in aws_subnet.private : s.id]
  security_group_ids  = [aws_security_group.vpc.id]

  tags = {
    "Name" = "${local.name_prefix}-ssmmessages"
  }
}

resource "aws_vpc_endpoint" "s3" {
  service_name      = data.aws_vpc_endpoint_service.s3.service_name
  vpc_id            = aws_vpc.this.id
  vpc_endpoint_type = "Gateway"
  route_table_ids   = [for r in aws_route_table.private : r.id]

  tags = {
    "Name" = "${local.name_prefix}-s3"
  }
}