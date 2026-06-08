#!/usr/bin/env bash

swayidle -w \
	timeout 600  'swaylock -f' \
	timeout 600  'niri msg action power-off-monitors' \
	resume       'niri msg action power-on-monitors' \
	timeout 21600 'systemctl suspend'
