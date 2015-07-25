#!/bin/sh

DATA_DIR=$HOME/ipython
ENTRYPOINT=/start.sh

if [ "$1" = "shell" ]; then
  ENTRYPOINT=/bin/bash
fi

docker run -i -p 8081:8080 -v $DATA_DIR:/data \
  -t nikhilk/ipython --entrypoint=$ENTRYPOINT

