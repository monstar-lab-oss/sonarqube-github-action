#!/bin/bash

set -e

sonar-scanner \
	-Dsonar.host.url=${INPUT_URL} \
	-Dsonar.login=${INPUT_TOKEN}