# Terraform Enterprise workspace creator
This is an example of using Terraform and the Terraform Enterprise provider to create a workspace and populate some initial variables.  The original demo is to run this config on a laptop that has access to the TFE SaaS platform app.terraform.io

## Prerequisites 
Terraform open source installed on your laptop, an active account on the Terraform Enterprise SaaS platform or trial account :`https://app.terraform.io/account/new?trial=terraform`, at least one organization pre-created, enough permissions to create an an organizaiton api token in TFE for your organization, access to a supported VCS (this example will later use Github), public cloud keys (this example uses AWS Access/Secret keys)
## How to get my TFE OAuth Token:
`https://app.terraform.io/api/v2/organizations/<yourOrgName>/oauth-tokens`
