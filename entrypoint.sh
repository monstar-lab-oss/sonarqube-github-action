#!/bin/sh -l

sonar-scanner \
	-Dsonar.host.url=$1 \
	-Dsonar.login=$2