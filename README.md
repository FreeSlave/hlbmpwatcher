# Half-Life BMP watcher

This is a script for automatic conversion of newly taken Half-Life screenshots from BMP to PNG format.

## Reasoning

I got tired of converting game screenshots to PNG manually before sending them to the somewhere else. BMP files are too big and not all software has an embedding option for BMP images (e.g. Discord posts them as regular files).

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

The script will automatically detect the path where Half-Life is installed and will scan it for mod subdirectories. It also will check if you have Sven Co-op installed. The script will watch mod directories and Sven Co-op screenshots directory for new screenshots to automatically convert them to PNG. The automatic path detection works only for Steam version of Half-Life. You can pass other paths as additional arguments manually.
