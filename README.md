AWS Resources Creation using Terraform

Description

This project uses Terraform to provision and manage various AWS resources. The infrastructure includes VPC, EC2 instances, RDS, ElastiCache, and other necessary components.

AWS Resources

1. VPC and Networking

VPC: Creates a Virtual Private Cloud.

Subnets: Configures both private and public subnets.

NAT Gateway: Provides internet access for instances in private subnets.

Route Tables: Manages routing for public and private subnets.

Internet Gateway: Enables internet access for public subnets.

2. Key Pair

Key Pair: Generates a key pair for SSH access to EC2 instances.

3. EC2 Instances

EC2: Launches virtual servers in the AWS cloud.

4. RDS

RDS: Provisions a managed relational database service.

5. Security Groups

Security Groups: Configures firewall rules to allow or deny traffic to AWS resources.

6. ElastiCache

ElastiCache: Sets up a managed caching service for faster data retrieval.

Setup Instructions

Prerequisites

Install Terraform: Terraform Installation Guide

Configure AWS CLI: AWS CLI Installation Guide

Steps

Clone the repository:

git clone https://github.com/yourusername/your-repo-name.git

Navigate to the project directory:

cd your-repo-name

Initialize Terraform:

terraform init

Review the execution plan:

terraform plan

Apply the Terraform configuration:

terraform apply

Confirm the prompt with yes.

Usage

Once the resources are provisioned, you can access your EC2 instances using the generated key pair and manage your RDS and ElastiCache services through the AWS Management Console.

Contributing

If you would like to contribute to this project, please fork the repository and submit a pull request. Ensure all proposed changes are tested and documented.

