### Prerequisites:
- An existing VPC and subnets that meet Amazon EKS requirements
  (this code is not responsible of creating these resources at this time. Also, best practice is to use private subnets for the EKS cluster)
- Terraform installed
- Login to your AWS account before executing terraform commands
- AWS ECR registry
- Github secrets: AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, ECR_REPOSITORY_URI
- Github variables: AWS_REGION, EKS_CLUSTER (make sure same values as provided to terraform)

### Deploy:

1) Provide the subnets IDs on which you want the cluster to be created.
This is specified using terraform variable `subnet_ids` in `terraform/eks/variables.tf`.
This variable already contains the subnet IDs of my private account as a default choice.

2) Run:
```
bash create_infra.sh
```

### Delete:
1) Run the below to delete the resources created by Terraform:
```
bash delete_infra.sh
```
2) Delete the ECR registry
3) Delete the Github secrerts and variables 