# Infrastructure as Code (IaC)

## Project description
The goal of this project is to create a simple infrastructure as code (IaC) using Terraform.

## Useful commands

- `terraform init`: Initialize a Terraform working director
- `terraform plan`: Show changes required by the current configuration
- `terraform apply`: Create or update infrastructure
- `terraform destroy`: Destroy Terraform-managed infrastructure
- `terraform show`: Show Terraform state or plan
- `terraform output`: Show output values from your Terraform state
- `terraform fmt`: Rewrites all Terraform configuration files to a canonical format
- `terraform validate`: Validates the Terraform files

## Environment

### Working on MacOS

- Install Terraform: `brew install terraform`
- Install tflint: `brew install tflint`
- Install aws cli: `brew install awscli`
- Install VS Code Terraform extension.

## Setting up AWS credentials

1. Access IAM Identity Center
2. Enable it in case it is not enabled
3. Edit settings summary accordingly
4. Set region
5. Create a user
6. Then go to your environment and start with the following commands:

```bash
aws configure sso
````

enter the SSO session name

in SSO start URL enter the AWS access Portal URL provided in the IAM Identity Center settings summary.

SSO region: us-west-1

Nothing in SSO registration scopes

7. Enter credentials in the browser
8. Create a permission set as AdministratorAccess
9. In AWS accounts add the account you want to use
10. Repeat ```aws configure sso```
11. Allow access and there will be a succeful message saying 

```bash
Request approved

AWS CLI has been given requested permissions
```

12. Set the CLI default client Region
13. CLI default output format can be empty for now

# S3 bucket creation with Terraform

1. Create a main.tf or resources.tf file 
2. Fill it with the corresponding code
3. Verify the code with ```terraform validate```
4. Use the ```terraform plan``` command to see the changes that Terraform will make to your infrastructure.
5. Execute the ```terraform apply``` command to apply the changes to your infrastructure.

# Best practices for Terraform

- Mark resources with tags like ```Iac = true```