# EMR-Cluster-using-Terraform
This terraform code will create an EMR cluster on AWS, It will create 
1. EMR Service Role
2. EMR Policies
3. S3 bucket for EMR Logs Storage
4. SG for Master and Slave instances
5. EMR Cluster
6. Bootstrap Actions and Configuration options for testing purposes
7. EMR Managed Cluster Scaling

# Values needs to be updated
1. variable.tf is updated

# Steps

```bash
terraform validate
terraform apply
```
