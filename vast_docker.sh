#!/bin/bash 

export DISPLAY=localhost:0.0

/opt/X11/bin/xhost + 127.0.0.1 

docker run --rm -ti -e DISPLAY=host.docker.internal:0  \
                    -v /Volumes/Lacie/Astro:/Astro \
                    --entrypoint bash \
                    --name vast \
                    vast:latest
