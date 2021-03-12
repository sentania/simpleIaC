#!/bin/bash
#
# Script to generate a refresh token for vRA8 on prem or vRA Cloud.
# This will prompt for the following values if they are not already set:
#    username
# Sets environment variables for VRA_REFRESH_TOKEN and VRA_URL which can be consumed by the
# TF provider more securely than leaving the token in cleartext.
#
#

username=${username:-empty}
password=${password:-empty}
domain=${domain:-empty}
host=${url:-empty}

while [ $# -gt 0 ]; do

   if [[ $1 == *"--"* ]]; then
        param="${1/--/}"
        declare $param="$2"
        # echo $1 $2 // Optional to see the parameter:value result
   fi

  shift
done


if  ! [ -x "$(command -v jq)" ]
then
        echo -e "\nthe jq utility is missing. See https://stedolan.github.io/jq/ for instructions to get it\n"
        exit 1
fi

#Check for an already existing username value
if [[ $username != "empty" ]]
then
        echo -e "\nusername variable found: $username\n"
else
        echo -e "\nPlease enter username to connect to vra with"
        read username
fi

#Check for an already existing password value
if [[ $password != "empty" ]]
then
    echo -e "\npassword variable found\n"
else
    echo -e "\nPlease enter password to connect to vra with\n"
    read -s password
fi

#Check for an already existing LDAP/AD domain value
if [[ $domain != "empty" ]]
then
    echo -e "\nExisting domain variable found: $domain\n"
else
        echo -e "\nPlease enter domain to connect to vra with (for AD/LDAP users) or press Enter if you not want to use domain"
        read domain
fi

if [[ $host != "empty" ]]
then
        echo -e "\nfound a value for the vra/cas server\n"
        export VRA_URL="https://$host"
else
        echo -e "\nPlease enter the hostname/fqdn of the VRA8 server/ or cloud identity server"
        read host
        export VRA_URL="https://$host"
fi

#use different json bodies with curl depending on whether or not a domain
# was specified
echo -e "\nGetting Token"
if [[ $domain == "" ]]
then
        export VRA_REFRESH_TOKEN=`curl -vvvk -X POST \
                "$VRA_URL/csp/gateway/am/api/login?access_token" \
                -H 'Content-Type: application/json' \
                -s \
                -d '{
                "username": "'"$username"'",
                "password": "'"$password"'"
                }' | jq -r .refresh_token`
else
        export VRA_REFRESH_TOKEN=`curl -k -X POST \
                "$VRA_URL/csp/gateway/am/api/login?access_token" \
                -H 'Content-Type: application/json' \
                -s \
                -d '{
                "username": "'"$username"'",
                "password": "'"$password"'",
                "domain": "'"$domain"'"
                }' | jq -r .refresh_token`
fi


#clean up password
unset password


echo $VRA_REFRESH_TOKEN
