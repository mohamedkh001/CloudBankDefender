
✅ Project Requirements (Task-Based):
T1. VPC & Network Configuration
Create a dedicated Virtual Private Cloud (VPC).

Set up public subnets for Load Balancers and bastion hosts.

Set up private subnets for application servers and databases.

Configure NAT Gateway for outbound internet access from private subnets.

Ensure full network segmentation and routing controls.

T2. Compute Resources (EC2 Instances)
Launch EC2 instances for frontend and backend services.

SSH access must be restricted by IP whitelisting.

Set up Auto Scaling Groups and an Application Load Balancer (ALB).

Enforce EC2 instance hardening and minimal access.

T3. Database Layer
Use Amazon RDS (MySQL or PostgreSQL).

Deploy inside private subnets with no public access.

Enable encryption at rest using AWS KMS.

Configure automatic backups and multi-AZ replication.

T4. Object Storage
Create S3 buckets for document and media storage.

Apply bucket policies and IAM roles to restrict access.

Enable encryption at rest and versioning.

Block public access at the bucket level.

T5. Identity & Access Management (IAM)
Create fine-grained IAM roles and policies per component.

Disable root account access; enforce MFA for all users.

Follow Least Privilege principle in all IAM configurations.

Log and review all access through IAM Access Analyzer.

T6. Monitoring & Alerts
Enable AWS CloudTrail and AWS Config for full logging.

Monitor API calls and configuration changes.

Set up CloudWatch alarms and SNS notifications for critical events.

T7. Encryption Strategy
Encrypt all data at rest and in transit.

Use AWS Key Management Service (KMS) with customer-managed keys (CMKs).

Apply encryption settings for RDS, EC2 volumes, and S3.

T8. Infrastructure as Code (IaC)
All infrastructure must be provisioned using Terraform.

Code should follow modular structure and use environment-based variables.

Maintain code reusability and readability for future expansion.

T9. Documentation
Provide a detailed README.md explaining architecture and security controls.

Include diagrams (e.g., high-level architecture, VPC design).

Document all Terraform modules, variables, and workflows.

T10. Security Validation & Testing
Review all Security Groups and NACLs for least privilege.

Test network accessibility and firewall rules.

Analyze CloudTrail logs for anomalies or misconfigurations.

Perform basic vulnerability assessments on public endpoints.

