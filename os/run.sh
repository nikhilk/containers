#!/bin/sh

if [ "$1" = "" ]; then
  DATA_DIR=$PWD
else
  DATA_DIR=$1
fi

docker run -i -v $DATA_DIR:/data -t nikhilk/os

