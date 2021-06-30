# ip address configuration of ONOS controller
sudo tee -a /etc/network/interfaces << END
auto ens3
iface ens3 inet dhcp
auto ens4
iface ens4 inet static
  address 12.20.0.123
  netmask 255.255.255.0
auto ens5
iface ens5 inet static
  address 172.12.10.1
  netmask 255.255.255.252
END
sudo systemctl restart networking
