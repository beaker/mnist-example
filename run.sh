#!/bin/bash

docker build -t mnist .
beaker blueprint create -n mnist mnist
beaker experiment create -f spec.yml
