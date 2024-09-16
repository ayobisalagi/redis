for i in {1..10000}; do
 rm -rf /etc/machine-id
 rm -rf /var/lib/dbus/machine-id
 dbus-uuidgen --ensure
 systemd-machine-id-setup
 timeout 15m ./samples
 sleep 5
 pkill samples
done
