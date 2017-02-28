provider "sakuracloud" {
  zone = "tk1a"
}

data sakuracloud_archive "ubuntu" {
  filter = {
    name = "Tags"
    values = ["YOUR_TAGNAME"]
  }
}

resource "sakuracloud_disk" "disk01" {
  name = "YOUR_INSTANCE_NAME"
  source_archive_id = "${data.sakuracloud_archive.ubuntu.id}"
  password = "YOUR_PASSWORD"

}

resource "sakuracloud_server" "server01" {
  name = "YOUR_INSTANCE_NAME"
  disks = ["${sakuracloud_disk.disk01.id}"]
  tags = ["@virtio-net-pci"]
  base_interface = [YOUR_SWITCH_INSTANCE_ID]
  base_nw_ipaddress = "YOUR_IPV4_ADDR"
  base_nw_gateway = "YOUR_DEFAULT_GATEWAY"
  base_nw_mask_len = "YOUR_SUBNET_MASK_2DIGIT"
}
