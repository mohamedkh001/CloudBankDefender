resource "aws_db_subnet_group" "cloudbank_db_subnet" {
  name       = "${var.project_name}-${var.environment}-db-subnet-group"
  subnet_ids = var.private_subnets

  tags = {
    Name        = "${var.project_name}-${var.environment}-db-subnet-group"
    Environment = var.environment
    Project     = var.project_name
  }
}

resource "aws_db_instance" "cloudbank_db" {
  identifier         = "${var.project_name}-${var.environment}-db"
  engine             = "mysql"
  instance_class     = var.db_instance_class
  allocated_storage  = var.db_allocated_storage
  name               = var.db_name
  username           = var.db_username
  password           = var.db_password
  db_subnet_group_name = aws_db_subnet_group.cloudbank_db_subnet.name
  vpc_security_group_ids = [aws_security_group.db_sg.id]

  storage_encrypted  = true
  monitoring_interval = 60
  monitoring_role_arn = aws_iam_role.rds_monitoring_role.arn

  skip_final_snapshot = true

  tags = {
    Name        = "${var.project_name}-${var.environment}-db"
    Environment = var.environment
    Project     = var.project_name
  }
}

resource "aws_iam_role" "rds_monitoring_role" {
  name = "${var.project_name}-${var.environment}-rds-monitoring-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "monitoring.rds.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "rds_monitoring_attach" {
  role       = aws_iam_role.rds_monitoring_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"
}
