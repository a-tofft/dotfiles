#!/bin/sh
sleep 5
conky -q -c ~/.config/conky/conky-system.conf &
conky -q -c ~/.config/conky/conky-hints.conf & exit