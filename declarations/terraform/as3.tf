/*
Copyright 2019 F5 Networks Inc.
This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

terraform {
  required_providers {
    bigip
  }
}


provider "bigip" {
  address = "54.144.87.71"
  username = "admin"
  password = var.password
}

output "file_list" {
  value = var.filelist
}


// config_name is used to set the identity of as3 resource which is unique for resource.

resource "bigip_as3" "as3_example" {
  as3_json = file("as3.json")
 #config_name = "myconfig"
}
