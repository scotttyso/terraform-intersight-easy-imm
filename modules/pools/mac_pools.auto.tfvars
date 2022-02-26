#______________________________________________
#
# MAC Pool Variables
#______________________________________________

mac_pools = {
  "FAILOVER" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:00:00"
        size = 255
        to   = "00:25:B5:A5:00:FE"
      }
    }
  }
  "DATA-A" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:10:00"
        size = 255
        to   = "00:25:B5:A5:10:FE"
      }
    }
  }
  "DATA-B" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:20:00"
        size = 255
        to   = "00:25:B5:A5:20:FE"
      }
    }
  }
  "MGMT-A" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:A0:00"
        size = 255
        to   = "00:25:B5:A5:A0:FE"
      }
    }
  }
  "MGMT-B" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:B0:00"
        size = 255
        to   = "00:25:B5:A5:B0:FE"
      }
    }
  }
  "MIGRATION-A" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:C0:00"
        size = 255
        to   = "00:25:B5:A5:C0:FE"
      }
    }
  }
  "MIGRATION-B" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:D0:00"
        size = 255
        to   = "00:25:B5:A5:D0:FE"
      }
    }
  }
  "STORAGE-A" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:E0:00"
        size = 255
        to   = "00:25:B5:A5:E0:FE"
      }
    }
  }
  "STORAGE-B" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:F0:00"
        size = 255
        to   = "00:25:B5:A5:F0:FE"
      }
    }
  }
}
