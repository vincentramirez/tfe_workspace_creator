# Configure the Terraform Enterprise Provider
provider "tfe" {
  hostname = "${var.hostname}"
  token    = "${var.token}"
}

resource "tfe_workspace" "creator" {
  name              = "${var.use_case_name}-creator"
  organization      = "${var.org}"
  working_directory = ""

  vcs_repo = {
    identifier     = "${var.creator_vcs_identifier}"
    oauth_token_id = "${var.oauth_token}"
  }
}

resource "tfe_variable" "master_aws_access_key" {
  key          = "master_aws_access_key"
  value        = "${var.master_aws_access_key}"
  category     = "terraform"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.creator.id}"
}


resource "tfe_variable" "master_aws_secret_key" {
  key          = "master_aws_secret_key"
  value        = "${var.master_aws_secret_key}"
  category     = "terraform"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.creator.id}"
}

resource "tfe_variable" "sub_account_aws_access_key" {
  key          = "sub_account_aws_access_key"
  value        = "${var.sub_account_aws_access_key}"
  category     = "terraform"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.creator.id}"
}


resource "tfe_variable" "sub_account_aws_secret_key" {
  key          = "sub_account_aws_secret_key"
  value        = "${var.sub_account_aws_secret_key}"
  category     = "terraform"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.creator.id}"
}


resource "tfe_variable" "hostname" {
  key      = "hostname"
  value    = "${var.hostname}"
  category = "terraform"
  workspace_id = "${tfe_workspace.creator.id}"
}

resource "tfe_variable" "token" {
  key      = "token"
  value    = "${var.token}"
  category = "terraform"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.creator.id}"
}

resource "tfe_variable" "oauth_token" {
  key      = "oauth_token"
  value    = "${var.oauth_token}"
  category = "terraform"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.creator.id}"
}

resource "tfe_variable" "vcs_identifier" {
  key      = "vcs_identifier"
  value    = "${var.vcs_identifier}"
  category = "terraform"
  workspace_id = "${tfe_workspace.creator.id}"
}

resource "tfe_variable" "org" {
  key          = "org"
  value        = "${var.org}"
  category     = "terraform"
  workspace_id = "${tfe_workspace.creator.id}"
}

resource "tfe_variable" "use_case_name" {
  key          = "use_case_name"
  value        = "${var.use_case_name}"
  category     = "terraform"
  workspace_id = "${tfe_workspace.creator.id}"
}

resource "tfe_variable" "aws_region" {
  key      = "aws_region"
  value    = "${var.aws_region}"
  category = "terraform"
  workspace_id = "${tfe_workspace.creator.id}"
}

resource "tfe_variable" "confirm_destroy" {
  key          = "CONFIRM_DESTROY"
  value        = "1"
  category     = "env"
  workspace_id = "${tfe_workspace.creator.id}"
}

