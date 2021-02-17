# Use terraform to provision an Amazon Machine Image (AMI) on Amazon Web Services (AWS) #

source: [https://learn.hashicorp.com/tutorials/terraform/aws-build?in=terraform/aws-get-started](https://learn.hashicorp.com/tutorials/terraform/aws-build?in=terraform/aws-get-started)
**Prerequisites**  

- An AWS account
- The AWS CLI installed
- Your AWS credentials configured locally.

With your account created and the CLI installed configure the AWS CLI.  
 `aws configure`  
Follow the prompts to input your AWS Access Key ID and Secret Access Key.
The configuration process creates a file at ~/.aws/credentials on MacOS and Linux or %UserProfile%\.aws\credentials on Windows, where your credentials are stored.  

Terraform configuration file name is **main.tf**   
 
1. Initialize the directory: `terraform init`  
1. Format configuration : `terraform fmt`  
1. Validate the configuration: `terraform validate `  
1. Create infrastructure: ` terraform apply`  
1. Inspect state: `terraform show`    
1. Manually manage state: `terraform state list`  


## Change Infrastructure ##

- update the ami of instance. Change the aws_instance.main resource under the provider block in main.tf by replacing the current AMI ID with a new one.
- Apply Changes: `terraform apply`  (The prefix -/+ means that Terraform will destroy and recreate the resource, rather than updating it in-place.)   
- Show the new values associated with this instance `terraform show`   

## Destroy Infrastructure ##

- Terminates resources defined in Terraform configuration: `terraform destroy`
