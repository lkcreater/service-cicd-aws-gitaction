#!/bin/bash
sed -i "s/#npa_api_ver#/$1/" sit-compose.yml
sed -i "s/#pamco_ver#/$2/" sit-compose.yml
sed -i "s/#property_api_ver#/$3/" sit-compose.yml
sed -i "s/#npa_cms_ver#/$4/" sit-compose.yml
sed -i "s/#npa_web#/$5/" sit-compose.yml