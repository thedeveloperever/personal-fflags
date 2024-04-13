$directory = "$Env:LocalAppData\Roblox\Versions\"
$ver = Get-Childitem "$directory\versions-*" -Directory -Name
cd $directory\$ver

if(Test-Path "$directory\$ver\ClientSettings") {
  rd "$directory\$ver\ClientSettings"
}

md "$directory\$ver\ClientSettings"
iwr https://raw.githubusercontent.com/thedeveloperever/personal-fflags/main/ClientAppSettings.json -o "$directory\$ver\ClientSettings\ClientAppSettings.json"
