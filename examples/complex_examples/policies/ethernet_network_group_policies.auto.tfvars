#______________________________________________
#
# Ethernet Network Group Policy Variables
#______________________________________________

ethernet_network_group_policies = {
  "ADMIN" = {
    allowed_vlans = "100"
    description   = ""
    tags          = []
  }
  "OCB-DATA" = {
    allowed_vlans = "99"
    description   = ""
    tags          = []
  }
  "Test123" = {
    allowed_vlans = "1101,1102"
    description   = ""
    tags          = []
  }
  "toto" = {
    allowed_vlans = "32"
    description   = ""
    tags          = []
  }
  "VG-ADMIN-SRV" = {
    allowed_vlans = "897"
    description   = ""
    native_vlan   = 897
    tags          = []
  }
  "VG-ADMIN-UPL" = {
    allowed_vlans = "897"
    description   = ""
    tags          = []
  }
  "VG-PRIVATE" = {
    allowed_vlans = "756,757,7"
    description   = ""
    tags          = []
  }
  "VG-SILCA" = {
    allowed_vlans = "1945"
    description   = ""
    tags          = []
  }
  "UCS-DEMO2-AppliancePortChannel-A-PC36" = {
    allowed_vlans = "2,1,3"
    description   = ""
    native_vlan   = 3
    tags          = []
  }
  "UCS-DEMO2-AppliancePort-A-1-35" = {
    allowed_vlans = "1"
    description   = ""
    native_vlan   = 1
    tags          = []
  }
  "aaa_LCP_eth0" = {
    allowed_vlans = "1"
    description   = ""
    native_vlan   = 1
    tags          = []
  }
  "aaa_LCP_eth1" = {
    allowed_vlans = "1"
    description   = ""
    native_vlan   = 1
    tags          = []
  }
  "aaa_LCP_eth3" = {
    allowed_vlans = "1"
    description   = ""
    native_vlan   = 1
    tags          = []
  }
  "esxi3_LCP_data-1" = {
    allowed_vlans = "2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,26,27,28,29,30,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99"
    description   = ""
    tags          = []
  }
  "esxi3_LCP_data-2" = {
    allowed_vlans = "2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,26,27,28,29,30,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99"
    description   = ""
    tags          = []
  }
  "esxi3_LCP_DATA-A" = {
    allowed_vlans = "1"
    description   = ""
    native_vlan   = 1
    tags          = []
  }
  "esxi3_LCP_DATA-B" = {
    allowed_vlans = "1"
    description   = ""
    native_vlan   = 1
    tags          = []
  }
  "esxi3_LCP_ISCSI-A" = {
    allowed_vlans = "31"
    description   = ""
    native_vlan   = 31
    tags          = []
  }
  "esxi3_LCP_ISCSI-B" = {
    allowed_vlans = "31"
    description   = ""
    native_vlan   = 31
    tags          = []
  }
  "esxi3_LCP_MGMT-A" = {
    allowed_vlans = "100"
    description   = ""
    native_vlan   = 100
    tags          = []
  }
  "esxi3_LCP_MGMT-B" = {
    allowed_vlans = "100"
    description   = ""
    native_vlan   = 100
    tags          = []
  }
  "esxi3_LCP_VMOTION-A" = {
    allowed_vlans = "20"
    description   = ""
    native_vlan   = 20
    tags          = []
  }
  "esxi3_LCP_VMOTION-B" = {
    allowed_vlans = "20"
    description   = ""
    native_vlan   = 20
    tags          = []
  }
  "esxi3_LCP_VNIC-ADMIN" = {
    allowed_vlans = "100"
    description   = ""
    native_vlan   = 100
    tags          = []
  }
  "esxi3_LCP_VNIC-ADMIN-B" = {
    allowed_vlans = "100"
    description   = ""
    native_vlan   = 100
    tags          = []
  }
  "ISCSI-BOOT-2_ISCSI-A" = {
    allowed_vlans = "31"
    description   = ""
    native_vlan   = 31
    tags          = []
  }
  "ISCSI-BOOT-2_ISCSI-B" = {
    allowed_vlans = "31"
    description   = ""
    native_vlan   = 31
    tags          = []
  }
  "ISCSI-BOOT-2_MGMT-A" = {
    allowed_vlans = "100"
    description   = ""
    native_vlan   = 100
    tags          = []
  }
  "ISCSI-BOOT-2_MGMT-B" = {
    allowed_vlans = "100"
    description   = ""
    native_vlan   = 100
    tags          = []
  }
  "ISCSI-BOOT_ISCSI-A" = {
    allowed_vlans = "31"
    description   = ""
    native_vlan   = 31
    tags          = []
  }
  "ISCSI-BOOT_ISCSI-B" = {
    allowed_vlans = "31"
    description   = ""
    native_vlan   = 31
    tags          = []
  }
  "ISCSI-BOOT_MGMT-A" = {
    allowed_vlans = "100"
    description   = ""
    native_vlan   = 100
    tags          = []
  }
  "ISCSI-BOOT_MGMT-B" = {
    allowed_vlans = "100"
    description   = ""
    native_vlan   = 100
    tags          = []
  }
  "ISCSI-BOOT_data-1" = {
    allowed_vlans = "2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,26,27,28,29,30,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99"
    description   = ""
    tags          = []
  }
  "ISCSI-BOOT_data-2" = {
    allowed_vlans = "2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,26,27,28,29,30,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99"
    description   = ""
    tags          = []
  }
  "ISCSI-BOOT_ISCSI-A" = {
    allowed_vlans = "31"
    description   = ""
    native_vlan   = 31
    tags          = []
  }
  "ISCSI-BOOT_ISCSI-B" = {
    allowed_vlans = "31"
    description   = ""
    native_vlan   = 31
    tags          = []
  }
  "ISCSI-BOOT_MGMT-A" = {
    allowed_vlans = "100"
    description   = ""
    native_vlan   = 100
    tags          = []
  }
  "ISCSI-BOOT_MGMT-B" = {
    allowed_vlans = "100"
    description   = ""
    native_vlan   = 100
    tags          = []
  }
  "ISCSI-BOOT_VMOTION-A" = {
    allowed_vlans = "20"
    description   = ""
    native_vlan   = 20
    tags          = []
  }
  "ISCSI-BOOT_VMOTION-B" = {
    allowed_vlans = "20"
    description   = ""
    native_vlan   = 20
    tags          = []
  }
  "ISCSI-BOOT_VNIC-ADMIN" = {
    allowed_vlans = "100"
    description   = ""
    native_vlan   = 100
    tags          = []
  }
  "ISCSI-BOOT_VNIC-ADMIN-B" = {
    allowed_vlans = "100"
    description   = ""
    native_vlan   = 100
    tags          = []
  }
  "ESXI-VCF-WLD_LCP_ETH0" = {
    allowed_vlans = "31,32,25,23,24,22,26,100"
    description   = ""
    native_vlan   = 100
    tags          = []
  }
  "ESXI-VCF-WLD_LCP_ETH1" = {
    allowed_vlans = "31,32,25,23,24,22,26,100"
    description   = ""
    native_vlan   = 100
    tags          = []
  }
  "ESXI-VCF-WLD_LCP_ETH2-iSCSI" = {
    allowed_vlans = "31"
    description   = ""
    native_vlan   = 31
    tags          = []
  }
  "ESXI-VCF-WLD_LCP_ETH3-iSCSI" = {
    allowed_vlans = "31"
    description   = ""
    native_vlan   = 31
    tags          = []
  }
  "ESXI-VCF-WLD-FC_LCP_ETH0" = {
    allowed_vlans = "31,32,25,23,24,22,26,100"
    description   = ""
    native_vlan   = 100
    tags          = []
  }
  "ESXI-VCF-WLD-FC_LCP_ETH1" = {
    allowed_vlans = "31,32,25,23,24,22,26,100"
    description   = ""
    native_vlan   = 100
    tags          = []
  }
  "ipvtest_LCP_eth0" = {
    allowed_vlans = "1"
    description   = ""
    native_vlan   = 1
    tags          = []
  }
  "test1_LCP_eth0" = {
    allowed_vlans = "1"
    description   = ""
    native_vlan   = 1
    tags          = []
  }
  "TEST-PLACEMENT_LCP_vnic0" = {
    allowed_vlans = "2"
    description   = ""
    native_vlan   = 2
    tags          = []
  }
  "TEST-PLACEMENT-TEMPLATE_LCP_vnic0" = {
    allowed_vlans = "2"
    description   = ""
    native_vlan   = 2
    tags          = []
  }
}
