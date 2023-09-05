# Half-Life BMP watcher [![Build Status](https://github.com/FreeSlave/hlbmpwatcher/actions/workflows/build.yml/badge.svg?branch=master)](https://github.com/FreeSlave/hlbmpwatcher/actions/workflows/build.yml)

Script for automatic conversion of Half-Life screenshots from BMP to PNG format.

## Reasoning

I got tired of converting game screenshots to PNG manually before sending them to the somewhere else. BMP files are too big and some software doesn't support embedding of BMP images (e.g. Discord shows them as regular uploads).

## Dependencies

You'll need a Python 3 and following packages:

```
pip3 install watchdog pillow
```

## Usage

On Unix-like systems just execute the script in terminal (or put it as a [startup](https://wiki.archlinux.org/title/autostarting) script).

On Windows run it with python:

```
python hlbmpwatcher
```

or, if you downloaded the generated exe-file just run hlbmpwatcher.exe

The script will automatically detect the path where Half-Life is installed and will scan it for mod subdirectories. It also will check if you have Sven Co-op installed. The script will watch mod directories and Sven Co-op screenshots directory for new screenshots to automatically convert them to PNG. The automatic path detection works only for Steam version of Half-Life. You can pass other paths as additional arguments manually.

### Commandline options

Run the script (or executable) with the `--help` parameter to see available options.

Use `--convert-existing` option if you want to convert screenshots that existed prior to running the tool.

Use `--no-watch` option to disable file watching. The tool will exit after showing the paths and converting existing .bmp images (if `--convert-existing` was provided).

### Create systemd unit for Linux

You can generate systemd service file and add it to your user services by running

```sh
./generate-systemd-service.sh
# examine generated hlbmpwatcher.service. You can add parameters for hlbmpwatcher in ExecStart field if you want
mkdir -p ~/.config/systemd/user/
cp hlbmpwatcher.service ~/.config/systemd/user/
systemctl --user enable hlbmpwatcher.service
systemctl --user start hlbmpwatcher.service
```
