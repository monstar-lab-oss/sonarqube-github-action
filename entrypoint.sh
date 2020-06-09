#!/bin/bash

set -e
pwd
ls
sonar-scanner \
	-Dsonar.host.url=${INPUT_URL} \
	-Dsonar.login=${INPUT_TOKEN}