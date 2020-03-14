#!/bin/bash

docker build -t jupyter-svg .
docker run -it -p 6012:6012 -v $PWD:/home/notebook --rm jupyter-svg 
