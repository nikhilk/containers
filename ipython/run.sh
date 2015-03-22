#!/bin/sh

if [ "$1" = "" ]; then
  DATA_DIR=$PWD
else
  DATA_DIR=$1
fi

docker run -i -p 8080:8080 -v $DATA_DIR:/data -t nikhilk/ipython

