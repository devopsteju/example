resource "google_compute_instance" "instance" {
   count        = "${var.instances}"
   name         = "${var.name}-instance-${count.index + 1}"
   machine_type = "${var.machine_type}"
   zone         = "${var.zone}"
   tags         = [ "http", "https"]


   disk {
    image = "${var.disk_image}"
     type  = "${var.disk_type}"
  }


  # declare metadata for configuration of the node
     count       = "${var.instances}"
#     cluster_name = "${var.name}"
#     myid        = "${count.index}"



#    network_interface {
#      network = "${var.name}-net"
#      access_config {
#       // Ephemeral IP
#     }
#  }


      network_interface {
         network = "default"
       }
  }