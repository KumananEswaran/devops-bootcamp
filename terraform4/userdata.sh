#!/bin/bash
curl -fsSL https://get.docker.com | sh
id ssm-user &>/dev/null || useradd -m ssm-user
usermod -aG docker ssm-user

git clone https://github.com/RackulaLives/Rackula.git /opt/rackula
cd /opt/rackula
docker compose up -d
