/* 
Variables used: 
- oauthclientId, oauthclientSecret 

Recommendations: 
Only allow the OAuth role access to the divisions being applied to minimise risk
*/

terraform {
  required_version = "~> 1.5.3"
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud"
      version = "~> 1.22.0"
    }
  }
}

provider "genesyscloud" {
  oauthclient_id = "${var.oauthClientId}"
  oauthclient_secret = "${var.oauthClientSecret}"
  aws_region = "eu-central-1"
}
resource "genesyscloud_tf_export" "export" {
  directory          = "./genesyscloud"
  resource_types     = ["genesyscloud_user", "genesyscloud_user_roles"]
  include_state_file = true
}