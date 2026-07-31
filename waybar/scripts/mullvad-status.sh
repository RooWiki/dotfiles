#!/bin/bash
STATUS=$(mullvad status 2>/dev/null)

if echo "$STATUS" | grep -q "Connected"; then
    SERVER=$(echo "$STATUS" | grep -oP '(?<=Connected to ).*' | head -1)
    echo "{\"text\": \"󰦝 VPN\", \"tooltip\": \"Mullvad: $SERVER\", \"class\": \"connected\"}"
elif echo "$STATUS" | grep -q "Connecting"; then
    echo '{"text": "󰦝 ...", "tooltip": "Mullvad: conectando...", "class": "connecting"}'
else
    echo '{"text": "󰦞 VPN", "tooltip": "Mullvad: desconectado", "class": "disconnected"}'
fi
