#!/bin/bash

mkdir -p ./img/
sudo docker build -t cloxd/pickpocket:test . && sudo singularity build -F ./img/pickpocket docker-daemon://cloxd/pickpocket:test

if [[ "${1}" == "prod" ]]; then
    sudo docker push cloxd/pickpocket:test 
fi

