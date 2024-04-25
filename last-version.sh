#!/bin/bash

echo "start"
NPA=$(aws ecr describe-images --repository-name npa-api --query 'sort_by(imageDetails,& imagePushedAt)[-1].imageTags[0]' --output text) && echo "$NPA"
PAMCO=$(aws ecr describe-images --repository-name pamco --query 'sort_by(imageDetails,& imagePushedAt)[-1].imageTags[0]' --output text) && echo "$PAMCO"

echo "set to value file"
sed -i "s/#npa_api_ver#/$NPA/" docker-compose.yml
sed -i "s/#pamco_ver#/$PAMCO/" docker-compose.yml

echo "done"