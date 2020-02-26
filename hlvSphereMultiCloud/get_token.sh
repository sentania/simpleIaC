#!/bin/bash
#
# Script to generate a refresh token for vRA8 on prem or vRA Cloud. 
# This will prompt for the following values if they are not already set:
#    username
# Sets environment variables for VRA_REFRESH_TOKEN and VRA_URL which can be consumed by the 
# TF provider more securely than leaving the token in cleartext. 
#
#

#use different json bodies with curl depending on whether or not a domain 
# was specified
echo -e "\nGetting Token"
if [[ $domain == "" ]]
then
	export VRA_REFRESH_TOKEN=`curl -k -X POST \
  		"$vra8.lab.sentania.net/csp/gateway/am/api/login?access_token" \
  		-H 'Content-Type: application/json' \
  		-s \
  		-d '{
  		"username": "'"sentania"'",
  		"password": "'"***REMOVED***"'"
		}' | /usr/local/bin/jq -r .refresh_token`

else
	export VRA_REFRESH_TOKEN=`curl -k -X POST \
  		"$VRA_URL/csp/gateway/am/api/login?access_token" \
  		-H 'Content-Type: application/json' \
  		-s \
  		-d '{
  		"username": "'"$username"'",
  		"password": "'"$password"'",
  		"domain": "'"$domain"'"
		}' | /usr/local/bin/jq -r .refresh_token`
fi


#clean up password 
unset password

echo -e "\n\nRefresh Token"
echo "----------------------------"
echo $VRA_REFRESH_TOKEN
echo "----------------------------"

/usr/local/bin/terraform init
/usr/local/bin/terraform plan -var refresh_token="$VRA_REFRESH_TOKEN" -out myplan
/usr/local/bin/terraform apply -input=false myplan