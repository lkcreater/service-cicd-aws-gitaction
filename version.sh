#!/bin/bash
sed -i "s/#npa_api_ver#/$1/" docker-compose.yml
sed -i "s/#pamco_ver#/$2/" docker-compose.yml
sed -i "s/#property_api_ver#/$3/" docker-compose.yml
sed -i "s/#npa_cms_ver#/$4/" docker-compose.yml
sed -i "s/#npa_web#/$5/" docker-compose.yml