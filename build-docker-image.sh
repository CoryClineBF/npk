#!/bin/bash

if [[ $UID -eq 0 ]]; then
	echo "[!] This script isn't meant to be run as root."
	echo "If you get an error about your AWS profile not being found,"
	echo "re-run this command as yourself WITHOUT sudo."
fi

docker build -t c6fc/npk:latest .
docker run -it -v `pwd`:/npk -v ~/.aws/:/root/.aws c6fc/npk:latest