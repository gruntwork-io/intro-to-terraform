[![Maintained by Gruntwork.io](https://img.shields.io/badge/maintained%20by-gruntwork.io-%235849a6.svg)](https://gruntwork.io/?ref=repo_intro_to_terraform)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.15.0-blue.svg)

# An Introduction to Terraform Sample Code

This repo contains the sample code for the blog post series [A Comprehensive Guide to 
Terraform](https://blog.gruntwork.io/a-comprehensive-guide-to-terraform-b3d32832baca). The examples correspond to the
following parts of the series:

1. [An Introduction to Terraform](https://blog.gruntwork.io/an-introduction-to-terraform-f17df9c6d180)
    * [single-web-server](./single-web-server): Deploy a single EC2 Instance with a web server that will return
      "Hello, World" for every request on port 8080.
    * [cluster-of-web-servers](./cluster-of-web-servers): Deploy a cluster of EC2 Instances in an Auto Scaling Group 
      (ASG) and an Elastic Load Balancer (ELB). The ELB listens on port 80 and distributes load across the EC2 
      Instances, each of which runs the same "Hello, World" web server. 
1. [How to Manage Terraform State](https://blog.gruntwork.io/how-to-manage-terraform-state-28f5697e68fa)
    * [s3-backend](./s3-backend): Create an S3 bucket and DynamoDB table to use as a Terraform backend. 
    * [database](./database): Deploy MySQL on top of Amazon's Relational Database Service (RDS). 
1. [How to create reusable infrastructure with Terraform modules](https://blog.gruntwork.io/how-to-create-reusable-infrastructure-with-terraform-modules-25526d65f73d)
    * [modules](./modules): Examples of reusable Terraform modules, including a module that can deploy a web server 
      cluster on top of ASG with an ELB. 
    * [live](./live): Examples of how to deploy different live environments (i.e., staging, production) using the code 
      from the `modules` folder. 
1. [Terraform tips & tricks: loops, if-statements, and pitfalls](https://blog.gruntwork.io/terraform-tips-tricks-loops-if-statements-and-gotchas-f739bbae55f9)
    * [loops-with-count](./loops-with-count): Examples of how to use the `count` parameters to "loop" over resources.        
    * [loops-with-for-each](./loops-with-for-each): Examples of how to use `for_each` to "loop" over inline blocks.        
    * [loops-with-for](./loops-with-for): Examples of how to use `for` to "loop" over individual values.        

## Quick start

**Note**: These examples deploy resources into your AWS account. Although all the resources should fall under the
[AWS Free Tier](https://aws.amazon.com/free/), it is not our responsibility if you are charged money for this.

1. Install [Terraform](https://www.terraform.io/).
1. Set your AWS credentials as the environment variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
1. `cd` into one of the example folders.
1. Run `terraform init`.
1. Run `terraform apply`.
1. After it's done deploying, the example will output URLs or IPs you can try out.
1. To clean up and delete all resources after you're done, run `terraform destroy`.

## License

Please see [LICENSE.txt](/LICENSE.txt) for details on how the code in this repo is licensed.

