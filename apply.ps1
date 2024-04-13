$directory = get-childitem "$Env:LocalAppData\Roblox\Versions\version-*" -Name
cd $directory

if(Test-Path "$directory\ClientSettings") {
  rd $directory\ClientSettings
}

md "$directory\ClientSettings"
iwr https://raw.githubusercontent.com/thedeveloperever/personal-fflags/main/ClientAppSettings.json -o $directory\ClientSettings\ClientAppSettings.json 
