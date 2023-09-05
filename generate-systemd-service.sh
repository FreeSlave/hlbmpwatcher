#!/bin/sh

script_path=$(readlink -f "$0")
script_dir=$(dirname "$script_path")

cat > hlbmpwatcher.service << _EOF_
[Unit]
Description=Half-Life BMP Watcher

[Service]
Type=simple
ExecStart=$script_dir/hlbmpwatcher
WorkingDirectory=$script_dir

[Install]
WantedBy=default.target
_EOF_


