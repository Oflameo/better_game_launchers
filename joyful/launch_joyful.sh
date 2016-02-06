#!/bin/bash

# Get the architecture
arch=$(uname -m)
# Get installation directory
dir=/opt/joyful

# Set the libpath and pick the proper binary
if [ "$arch" == "x86_64" ]; then
        export LD_LIBRARY_PATH="$dir/lib64:${LD_LIBRARY_PATH}"
        $dir/joyful.x86_64 --preloadScript=preload/ext-x86_64.rb "$@"
else
        export LD_LIBRARY_PATH="$dir/lib:${LD_LIBRARY_PATH}"
        $dir/joyful.x86 --preloadScript=preload/ext-x86.rb "$@"
fi
