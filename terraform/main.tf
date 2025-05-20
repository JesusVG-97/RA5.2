terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

provider "virtualbox" {}

resource "virtualbox_vm" "ubuntu" {
  name   = "ubuntu-24-04"
  cpus   = 2
  memory = "2048 mib"   # memoria en formato string
  image  = "UDesktop-24.04.ova"
  status = "poweroff"

  network_adapter {
    type           = "hostonly"
    host_interface = "VirtualBox Host-Only Ethernet Adapter"
  }
}
