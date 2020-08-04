#!/bin/bash

docker build -t mnist .
beaker image create -n mnist mnist
beaker experiment create -f spec.yml
