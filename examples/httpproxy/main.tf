variable "client_username" {}
variable "client_password" {}

provider "foreman" {
  server_hostname = "192.168.1.118"
  server_protocol = "https"

  client_tls_insecure = "true"

  client_username = "${var.client_username}"
  client_password = "${var.client_password}"
}

resource "foreman_httpproxy" "example" {
  name = "proxy.company.com"
  url = "https://proxy.company.com:8443"
}

data "foreman_httpproxy" "httpproxy" {
  name = "proxy.company.com"
}