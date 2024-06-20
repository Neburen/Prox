#!/bin/bash

SERVICE_NAME=$1
COMMAND_PATH=$2
TIMEOUT=${3:-5}

if [[ -z "$SERVICE_NAME" || -z "$COMMAND_PATH" ]]; then
  echo "Usage: $0 <service-name> <command-path> [timeout]"
  exit 1
fi

SERVICE_FILE="/etc/systemd/system/${SERVICE_NAME}.service"

sudo tee $SERVICE_FILE > /dev/null << EOL
[Unit]
Description=${SERVICE_NAME}
After=network-online.target

[Service]
Type=oneshot
ExecStart=${COMMAND_PATH}
TimeoutStartSec=${TIMEOUT}

[Install]
WantedBy=multi-user.target
EOL

sudo systemctl daemon-reload
sudo systemctl enable ${SERVICE_NAME}.service
sudo systemctl start ${SERVICE_NAME}.service

echo "Service ${SERVICE_NAME} configured and started."
