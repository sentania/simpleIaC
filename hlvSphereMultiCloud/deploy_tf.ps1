#Script to generate an API refresh token for accessing vRA8/CAS. This is needed for
# the terraform provider to connect successfully
$vRAUser="sentania"
$vRApassword="p0w3R2win!"
$vRAdomain=""
$vRAServer="vra8.lab.sentania.net"


$loginurl="https://$vraserver/csp/gateway/am/api/login?access_token"
if ($vradomain.length -gt 1) {
    $body = "{ ""username"":""$vRAUser"",""password"":""$vRAPassword"",""domain"":""$vRADomain""}"    
} else {
    $body = "{ ""username"":""$vRAUser"",""password"":""$vRAPassword""}"
}

$resp = Invoke-RestMethod -Method POST -ContentType "application/json" -URI $loginurl -Body $body -skipcertificatecheck
#Write-Host "`n---------Refresh Token---------"
#$resp.refresh_token
#Write-Host "-------------------------------`n"

#Set ENV Variables for those wanting to use them for the Terraform Provider
$ENV:VRA_URL="https://$vRAServer"
$ENV:VRA_REFRESH_TOKEN=$resp.refresh_token
$refresh_token = $resp.refresh_token

& C:\utils\terraform.exe apply -var refresh_token="$refresh_token"

