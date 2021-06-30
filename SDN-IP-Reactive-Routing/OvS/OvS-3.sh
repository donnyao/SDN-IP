tee -a /etc/network/interfaces << END
auto eth0
iface eth0 inet static
  address 12.20.0.3
  netmask 255.255.255.0
END
ovs-vsctl del-port br0 eth0
ovs-vsctl set-controller br0 tcp:12.20.0.123:6633
ovs-vsctl set bridge br0 stp_enable=true