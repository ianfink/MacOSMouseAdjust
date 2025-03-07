#! /usr/bin/env bash

# Copyright (C) 2025 Ian M. Fink.  All rights reserved.
#
# This program is free software:  you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the Free
# Software Foundation, either version 3 of the License, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
# more details.
# 
# You should have received a copy of the GNU General Public License along
# with this program.  If not, please see: https://www.gnu.org/licenses.
#
# Tabstop:	4

BIN_DIR="/usr/local/bin"

if [ "$1" = "homem" ]; then
	echo "homem"
	osascript ${BIN_DIR}/homeMouse.scpt
	exit 0
fi

if [ "$1" = "workm" ]; then
	echo "workm"
	osascript ${BIN_DIR}/workMouse.scpt
	exit 0
fi

echo "USAGE: $0 [homem | workm]"
exit 1

