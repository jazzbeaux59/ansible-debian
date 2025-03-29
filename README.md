# Debian setup with Ansible

Setup Ubuntu or Rpi from scratch with only one command!

## Description

This repository contains Ansible tasks needed to setup the following modules on RPI:

* periodical autoupgrade
* aptitude
* crontab
* setup local .ssh directory
* Git config
* pyenv
* miscellaneous linux tools
* change Ubuntu firewall (ufw) to firewalld and enable http traffic
* install and start Apache2
* docker (also moves docker files to a USB to save storage on the internal SD card)

## Origination
This project was forked from https://github.com/Calychas/ansible-pi and contains changes for my personal lab environment. Some of the original tasks remain but are commented out from mail.yml. Original example files remain.

## Getting Started

### Dependencies

* Python (tested on 3.11.6 and Linux) on the host
* Raspberry Pi with a debian-based OS (tested on Raspberry Pi OS 64-bit bookworm and RPI 3B+). See [Raspberry Pi OS Imager](https://www.raspberrypi.com/software/) if you didn't install it yet.

### Installing

You need to install Ansible. On Linux use:

```sh
pip install -r requirements.txt
```

NOTE: for MacOS, install this way:
```sh
brew install ansible
```

Copy and fill out the following files:

1. `inventory.yml.example` as `inventory.yml` - change user and host
2. `main.yml.example` as `main.yml` - supply missing vars, optionally comment out or edit the tasks

### Executing

First debug the connection:

```sh
ansible-playbook -i inventory debug.yml
```

If everything works, run the full suite:

```sh
ansible-playbook -i inventory main.yml
```

Or for desktop machines:

```sh
ansible-playbook -i inventory main-desktop.yml
```

## Authors

* Kacper Leśniara ([kacper.lesniara@gmail.com](mailto:kacper.lesniara@gmail.com))

## License

This project is licensed under the MIT License - see the [LICENSE.md](./LICENSE.md) file for details
