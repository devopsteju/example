 ### Credential ####
 # Path to the credential file
 variable "credentials" {
   default = "credentials.json.example"
 }



 # Google region where the cluster should be created
variable "region" {
   default = "europe-west1"
}

 # Google zone where the cluster should be created
variable "zone" {
   default = "europe-west1-d"
}


 variable "project" {
   description = "infrastructure.04"
 }


 variable "disk_image" {
   description = "OS image to use for installation"
 }


 variable "disk_size" {
   description = "disk size"
 }


 # Disk type to use for installation
 variable "disk_type" {
   default = "pd-standard"
 }


 # Benchmark machine type (flavor)
 variable "machine_type" {
   default = "f1-micro"
 }


 #### Networking ####
 # The address of the subnet in CIDR
 # variable "network_interface" {
 # default = "10.132.0.0/20"
# }

# variable "net" {
#   default = "net"
#}


 #### Project ####
 # The name of the cluster
 variable "name" {
   default = "gcloud"
 }


 # Number of instances to install
  variable "instances" {
  default = "2"
 }
#variable "greeting" {
#    description = "{data.terraform_remote_state.foo.greeting}"
#  }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 