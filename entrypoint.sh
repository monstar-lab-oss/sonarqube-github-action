#!/bin/sh -l

sonarsource/sonar-scanner-cli \
	-Dsonar.host.url=$1 \
	-Dsonar.login=$2