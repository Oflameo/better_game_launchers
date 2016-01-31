#!/bin/sh
# Get installation directory
dir=$(dirname $0)

# Run the binary with wine
wine $dir/UNDERTALE.exe
