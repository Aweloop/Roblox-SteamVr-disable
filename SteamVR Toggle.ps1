# Put the path to that bitch of a folder here
$folderPath = "C:\Program Files (x86)\Steam\steamapps\common"

if (Test-Path "$folderPath\SteamVR") {
    Rename-Item "$folderPath\SteamVR" -NewName "SteamVR_Dis"
    Write-Host "Folder 'SteamVR' renamed to 'steamVR_Dis'"
} 

elseif (Test-Path "$folderPath\SteamVR_Dis") {
    Rename-Item "$folderPath\SteamVR_Dis" -NewName "SteamVR"
    Write-Host "Folder 'SteamVR_Dis' renamed to 'SteamVR'"
} 
else {
    Write-Host "Neither 'SteamVR' nor 'SteamVR_Dis' folder found. check if you put the right path in this program"
}
