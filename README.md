# IaC CI/CD

A five stage pipeline to provision AWS resources for an EKS cluster and deploy initial containers

1. Setting up the Terraform backend to pull state from an S3 bucket. Python script was implemented to automate the copying of  local state to S3
2. Provisioning the infrastructure using terraform to create the Amazon EKS cluster and deploy worker nodes 
3. Creating an IAM Policy for the AWS Load Balancer Controller, creating an IAM role with the policy attached and annotate the Kubernetes service account for the AWS Load Balancer Controller 
4. Installing the AWS Load Balancer Controller using helm
5. Deploying the application containers on the Kubernetes 

Files to update in prep to run pipeline
variables.tf
 - s3_bucket: replace the default name
 - db_name : replace the default name

state.txt
 - bucket: replace same as s3 bucket name in variables.tf
 - key : the file path you want to place the state files in the S3 bucket
 - region: your region
 - dynamodb_table: replace same as db_name in variables.tf

kubernetes/state.tf
  - bucket: replace same as s3 bucket name in variables.tf
  - key : the file path you want to place the state files in the S3 bucket (this should be different from what's in state.txt) 
  - region: your region
  - dynamodb_table: replace same as db_name in variables.tf
