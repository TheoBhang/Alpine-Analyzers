#!/bin/bash

# for each folder in a repertory (here, the analyzers) we build the docker image
for d in */ ; do
    cd $d
    # $d to lowercase
    d=$(echo $d | tr '[:upper:]' '[:lower:]')
    # remove the last character (the /)
    d=${d%?}
    docker build -t "theobhang/$d:1" .
    cd ..
done
