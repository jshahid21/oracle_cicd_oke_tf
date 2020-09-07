variable "ads" {
  type = list
}
variable "compartment_ocid" {}
variable "vcn" {}
variable "route_table_id" {}
variable "sec_lists_ids" {}

variable "oke_cluster" {
  type    = map
  default = { 
    name           = "Demo_Cluster"
    k8s_version    = "v1.16.8"
    pool_name      = "Demo_Node_Pool" 
    node_shape     = "VM.Standard2.1"  
    pods_cidr      = "10.1.0.0/16" 
    services_cidr = "10.2.0.0/16"
    
  } 
} 

variable "availability_domain" {
  default = 2
}

variable "cluster_options_add_ons_is_kubernetes_dashboard_enabled" {
  default = true
}

variable "cluster_options_add_ons_is_tiller_enabled" {
  default = true
}

variable "node_pool_initial_node_labels_key" {
  default = "key"
}

variable "node_pool_initial_node_labels_value" {
  default = "value"
}

variable "node_pool_quantity_per_subnet" {
  default = 1
}

#variable "node_pool_ssh_public_key" {
#  default = "${chomp(file(id_rsa.pub))}"
#}

