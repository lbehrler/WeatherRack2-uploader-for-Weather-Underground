#! /bin/bash

# Using flock to prevent multiple instances from launching
# flock -n /tmp/WR2-ADV-UL.lock sudo python /home/pi/WR2-uploader-WX/WR2-adv-uploader.py

[Unit]
Description=WR2 Advanced Uploader

[Service]
Type=idle
ExecStart=/usr/bin/python /home/pi/WR2-uploader-WX/WR2-adv-uploader.py
StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=my_server
User=pi
Group=pi

[Install]

