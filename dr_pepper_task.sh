#!/bin/bash
#Assuming that the input json file is saved in a file called "carmodels" 

cat carmodels | /usr/local/bin/jq -r '.Makes | group_by(.make_country) | .[] | {Country: .[0].make_country, Number: [.[].make_display] | length, Car: [.[].make_display] | sort | reverse} '
