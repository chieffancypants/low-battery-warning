#! /bin/bash


service='low-battery-warning'
chmod +x "$service"
cp ./"$service" /usr/local/bin/"$service"
cp "./$service.service" "/lib/systemd/system/$service.service"
systemctl enable "$service"
systemctl start "$service"
systemctl status "$service"

