#!/bin/sh

set -oue pipefail

# Hide grub menu
/run/install/repo/kickstart/hide-grub.sh
