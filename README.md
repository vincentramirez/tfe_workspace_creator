# Terraform Enterprise workspace creator
This is an example of using Terraform and the Terraform Enterprise provider to create a workspace and populate some initial variables.  The original demo is to run this config on a laptop that has access to the TFE SaaS platform app.terraform.io

## Prerequisites 
Terraform open source installed on your laptop, an active account on the Terraform Enterprise SaaS platform or trial account :`https://app.terraform.io/account/new?trial=terraform`, at least one organization pre-created, a user api token with write or admin permissions in your organization, access to a supported VCS (this example will later use Github), public cloud keys (this example uses AWS Access/Secret keys), Git installed on your local machine.  

This demo leverages 3 separate Github repos:  
1-`https://github.com/vincentramirez/tfe_workspace_creator.git`  
2-`https://github.com/vincentramirez/use_case001-creator.git`  
3-`https://github.com/vincentramirez/use_case001-repo.git`  

Create your own repos in Github based on these three.  An easy way to do this is to use the Github GUI, upper right, click + New Repository > give it the name of the repo, choose public or private, don't check the box for "initialize this repository with a README" > click the "import code" button > paste the link to the repo you are cloning this repo from example:   
Repo 2 -`https://github.com/vincentramirez/use_case001-creator.git`
Then click "Begin import" button.  Give it a minute then click on the link or refresh your Github repo view and look for the newly created repo.  You now have your own repos to play with.  This step is an important pre-req to ensure that your demo is linked to your own repos for further tweaking, et.. 

Repeat for the above steps for Repo 3 `https://github.com/vincentramirez/use_case001-repo.git` 

Note that the first repo `https://github.com/vincentramirez/tfe_workspace_creator.git` is originally meant to be run on your local system, it is still a good practice to create your own copy of this repo, specifically if you want to go further and demonstrate a pipline deployment process for the creation of the "creator" workspace.  DON'T check your terraform.tfvars file back into the VCS!!!! 

## How to get my TFE OAuth Token:
In a browser with internet accesss go to this path for your org:  
`https://app.terraform.io/api/v2/organizations/<yourOrgName>/oauth-tokens`  
The output will look like this: `{"data":[{"id":"ot-AbCdefg2hIjkLm".........`  

## How to create your TFE User API Token
In the TFE GUI select the user icon > User Settings > Tokens > enter a description > Generate Token or Regenerate token.  Use this value for the tfe_user_token variable.   

## How to use this example
Clone this repo to your local machine   
`git clone https://github.com/vincentramirez/tfe_workspace_creator.git`  
`cd tfe_workspace_creator`  
`cp terraform.tfvars.example terraform.tfvars`  
`vi terraform.tfvars`  
Enter your info & *BE VERY CAREFUL with this file! Do not check it into a public repo as you would expose your cloud keys*  
`terraform init`  
`terraform plan` check for any errors     
`terraform apply`  
If this config is successful you should have a new workspace in your TFE instance called `${var.use_case_name}-creator`  
You may have to refresh your TFE instance in the web browser to see the new workspace
## Next step
Move to the README in the second repo for this demo  
`https://github.com/vincentramirez/use_case001-creator.git`  

## Acknowledgments
Hat tip to Adam Cavaliere for helping create this demo flow and structure. 
