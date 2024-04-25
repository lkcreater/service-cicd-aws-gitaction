#!/bin/bash
sed -i "s/#npa_api_ver#/$1/" uat-compose.yml
sed -i "s/#pamco_ver#/$2/" uat-compose.yml
sed -i "s/#property_api_ver#/$3/" uat-compose.yml
sed -i "s/#npa_cms_ver#/$4/" uat-compose.yml
sed -i "s/#npa_web#/$5/" uat-compose.yml