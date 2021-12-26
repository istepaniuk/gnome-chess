#!/bin/bash

# Hacky script to overwrite the system's gnome-chess binary. YMMV.

set -e

rm -rf builddir

meson builddir/ --prefix=/usr

(cd builddir/ && meson compile)

sudo cp builddir/src/gnome-chess /usr/games/gnome-chess
