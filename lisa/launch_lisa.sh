#!/bin/bash

# Get the architecture
arch=$(uname -m)
# Get installation directory
dir=/opt/lisa

# Set the libpath and pick the proper binary
if [ "$arch" == "x86_64" ]; then
        export LD_LIBRARY_PATH="$dir/lib64:${LD_LIBRARY_PATH}"
        $dir/lisa.x86_64 "$@"
else
        export LD_LIBRARY_PATH="$dir/lib:${LD_LIBRARY_PATH}"
        $dir/lisa.x86 "$@"
fi
