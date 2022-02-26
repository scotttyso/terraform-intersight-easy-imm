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
        to   = "00:25:B5:A5:00:FF"
      }
    }
  }
  "DATA-A" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:10:00"
        size = 255
        to   = "00:25:B5:A5:10:FF"
      }
    }
  }
  "DATA-B" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:20:00"
        size = 255
        to   = "00:25:B5:A5:20:ff"
      }
    }
  }
  "MGMT-A" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:A0:00"
        size = 255
        to   = "00:25:B5:A5:A0:FF"
      }
    }
  }
  "MGMT-B" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:B0:00"
        size = 255
        to   = "00:25:B5:A5:B0:FF"
      }
    }
  }
  "MIGRATION-A" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:C0:00"
        size = 255
        to   = "00:25:B5:A5:C0:FF"
      }
    }
  }
  "MIGRATION-B" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:D0:00"
        size = 255
        # to   = "00:25:B5:A5:D0:ff"
      }
    }
  }
  "STORAGE-A" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:E0:00"
        size = 255
        # to   = "00:25:B5:A5:E0:FF"
      }
    }
  }
  "STORAGE-B" = {
    assignment_order = "sequential"
    mac_blocks = {
      "0" = {
        from = "00:25:B5:A5:F0:00"
        size = 255
        # to   = "00:25:B5:A5:F0:ff"
      }
    }
  }
}
