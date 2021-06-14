provider "ncloud" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

resource "ncloud_login_key" "key" {
  key_name = "${var.login_key_name}"
}

resource "ncloud_server" "server" {
    name			= "${var.server_name}-1"
    server_image_product_code	= "${var.server_image_product_code}"
    server_product_code		= "${var.server_product_code}"
    login_key_name		= "${ncloud_login_key.key.key_name}"
    zone			= var.zone
}




