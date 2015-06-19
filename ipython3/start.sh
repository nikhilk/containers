#!/bin/sh
#
# start.sh
# Container entrypoint
#

mkdir -p /data/notebooks
mkdir -p /data/modules
mkdir -p /data/static

export PYTHONPATH=$PYTHONPATH:/data/modules
ipython notebook \
  --ip="*" --port=8080 \
  --no-browser --no-script --no-mathjax --matplotlib=inline \
  --notebook-dir=/data/notebooks \
  --NotebookApp.extra_static_paths="['/data/static']"

