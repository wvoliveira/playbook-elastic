#!/bin/bash

#
# Check elasticsearch service
#

NAME="check_elastic_service"
STATUS=$(systemctl status elasticsearch 1> /dev/null 2>&1; echo $?)

#echo "Status elasticsearch: ${STATUS}"

if [[ "$STATUS" == "0" ]]; then
  echo "0 ${NAME} - Elasticsearch is running!"
  exit 0
else
  echo "2 ${NAME} - Elasticsearch is not running! Check!"
  exit 2
fi
