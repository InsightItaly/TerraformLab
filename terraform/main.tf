/*Terraform Cloud with GitHub */
/*
terraform {
    backend "remote" {
        organization = "InsightItaly"

        workspaces {
            name = "TerraformLab"
        }
    }
}
*/

provider "azurerm" {
    subscription_id = "${var.TF_VAR_ARM_SUBSCRIPTION_ID}"
    client_id = "${var.TF_VAR_ARM_CLIENT_ID}"
    client_secret = "${var.TF_VAR_CLIENT_SECRET}"
    tenant_id = "${var.TF_VAR_TENANT_ID}"
}

