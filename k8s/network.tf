# --------------------------------------------------------------------------------
# Cluster and Node Networking 
# --------------------------------------------------------------------------------

resource "oci_core_subnet" "clusterSubnet_1" {
  #Required
  availability_domain = var.ads[0]
  cidr_block          = "10.0.20.0/24"
  compartment_id      = var.compartment_ocid
  vcn_id              = var.vcn

  # Provider code tries to maintain compatibility with old versions.
  security_list_ids = ["${var.sec_lists_ids}"]
  display_name      = "SubNet1ForClusters"
  route_table_id    = var.route_table_id
}

resource "oci_core_subnet" "clusterSubnet_2" {
  #Required
  availability_domain = var.ads[1]
  cidr_block          = "10.0.21.0/24"
  compartment_id      = var.compartment_ocid
  vcn_id              = var.vcn

  # Provider code tries to maintain compatibility with old versions.
  security_list_ids = ["${var.sec_lists_ids}"]
  display_name      = "SubNet2ForClusters"
  route_table_id    = var.route_table_id
}


resource "oci_core_subnet" "nodepool_subnet_1" {
  #required
  availability_domain = var.ads[1]
  cidr_block          = "10.0.22.0/24"
  compartment_id      = var.compartment_ocid
  vcn_id              = var.vcn

  security_list_ids = ["${var.sec_lists_ids}"]
  display_name      = "Node_Pool_subnet1"
  route_table_id    = var.route_table_id
}

resource "oci_core_subnet" "nodepool_subnet_2" {
  #required
  availability_domain = var.ads[2]
  cidr_block          = "10.0.23.0/24"
  compartment_id      = var.compartment_ocid
  vcn_id              = var.vcn

  security_list_ids = ["${var.sec_lists_ids}"]
  display_name      = "Node_Pool_subnet2"
  route_table_id    = var.route_table_id
}


#
#resource "oci_core_subnet" "nodePool_Subnet_2" {
#  #Required
#  availability_domain = "${data.oci_identity_availability_domain.ad2.name}"
#  cidr_block          = "10.0.23.0/24"
#  compartment_id      = "${var.compartment_ocid}"
#  vcn_id              = "${oci_core_virtual_network.demo_vcn.id}"
#
#  # Provider code tries to maintain compatibility with old versions.
#  security_list_ids = ["${oci_core_virtual_network.demo_vcn.default_security_list_id}"]
#  display_name      = "tfSubNet2ForNodePool"
#  route_table_id    = "${oci_core_route_table.demo_route_table.id}"
#}

