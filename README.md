# Puddle RPi Image

## TODO

* Add another layer to install useful tools (e.g. `vim`, `tcpdump`, `socat`)
* Configure EEPROM settings on first boot (e.g. `PSU_MAX_CURRENT=5000`)
* Configure `config.txt` settings (e.g. `dtparam=rtc_bbat_vchg=3000000`)
* Setup networking
  * Static ips on eth0 and wlan0
  * Wireless client on wlan0 if pre-configured network detected, otherwise
  * Wireless AP with DHCP server on wlan0
* Read-only root with in-memory logging and limited flushing to disk
