# Terraform Enterprise workspace creator
This is an example of using Terraform and the Terraform Enterprise provider to create a workspace and populate some initial variables.  The original demo is to run this config on a laptop that has access to the TFE SaaS platform app.terraform.io

## Prerequisites 
Terraform open source installed on your laptop, an active account on the Terraform Enterprise SaaS platform or trial account :`https://app.terraform.io/account/new?trial=terraform`, at least one organization pre-created, enough permissions to create an an organizaiton api token in TFE for your organization, access to a supported VCS (this example will later use Github), public cloud keys (this example uses AWS Access/Secret keys), Git installed on your local machine.  

This demo leverages 3 separate Github repos:  
1-`https://github.com/vincentramirez/tfe_workspace_creator.git`  
2-`https://github.com/vincentramirez/use_case001-creator.git`  
3-`https://github.com/vincentramirez/use_case001-repo.git`  


## How to get my TFE OAuth Token:
In a browser with internet accesss go to this path for your org:  
`https://app.terraform.io/api/v2/organizations/<yourOrgName>/oauth-tokens`
The output will look like this: `{"data":[{"id":"ot-AbCdefg2hIjkLm".........`  

## How to use this example
Clone this repo to your local machine   
`git clone https://github.com/vincentramirez/tfe_workspace_creator.git`  
`cd tfe_workspace_creator`  
`cp terraform.tfvars.example terraform.tfvars`  
`vi terraform.tfvars`  
Enter your info *Be very carful with this file, do not check it into a public repo as you would expose your cloud keys*
