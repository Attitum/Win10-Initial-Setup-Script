###############################################################################
# Win 10 / Server 2016 / Server 2019 Initial Setup Script - Tweak library
# Author: Disassembler <disassembler@dasm.cz>
# Version: v3.9, 2020-04-02
# Source: https://github.com/Disassembler0/Win10-Initial-Setup-Script
###############################################################################



###############################################################################
#region Settings > Privacy
###############################################################################

# Disabling : Settings : Privacy : Account Info : Let Windows Apps Access Account Information
Function DisableLetAppsAccessAccountInfo {
	Write-Output "Disabling : Settings : Privacy : Account Info : Let Windows Apps Access Account Information..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessAccountInfo" -Type DWord -Value 2
}

# Enabling : Settings : Privacy : Account Info : Let Windows Apps Access Account Information
Function EnableLetAppsAccessAccountInfo {
	Write-Output "Enabling : Settings : Privacy : Account Info : Let Windows Apps Access Account Information..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessAccountInfo" -ErrorAction SilentlyContinue
}

# Disabling : Settings : Privacy : Contacts : Allow Access to Contacts On This Device
Function DisableLetAppsAccessContacts {
	Write-Output "Disabling : Settings : Privacy : Contacts : Allow Access to Contacts On This Device..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessContacts" -Type DWord -Value 2
}

# Enabling : Settings : Privacy : Contacts : Allow Access to Contacts On This Device
Function EnableLetAppsAccessContacts {
	Write-Output "Enabling : Settings : Privacy : Contacts : Allow Access to Contacts On This Device..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessContacts" -ErrorAction SilentlyContinue
}

# Disabling : Settings : Privacy : Calendar : Allow Access to Calendar On This Device
Function DisableLetAppsAccessCalendar {
	Write-Output "Disabling : Settings : Privacy : Calendar : Allow Access to Calendar On This Device..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessCalendar" -Type DWord -Value 2
}

# Enabling : Settings : Privacy : Calendar : Allow Access to Calendar On This Device
Function EnableLetAppsAccessCalendar {
	Write-Output "Enabling : Settings : Privacy : Calendar : Allow Access to Calendar On This Device..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessCalendar" -ErrorAction SilentlyContinue
}

# Disabling : Settings : Privacy : Phone Calls : Allow Windows Apps to Make Phone Calls
Function DisableLetAppsAccessPhone {
	Write-Output "Disabling : Settings : Privacy : Phone Calls : Allow Windows Apps to Make Phone Calls..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessPhone" -Type DWord -Value 2
}

# Enabling : Settings : Privacy : Phone Calls : Allow Windows Apps to Make Phone Calls
Function EnableLetAppsAccessPhone {
	Write-Output "Enabling : Settings : Privacy : Phone Calls : Allow Windows Apps to Make Phone Calls..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessPhone" -ErrorAction SilentlyContinue
}

# Disabling : Settings : Privacy : Call History: Allow Windows Apps Access Call History
Function DisableLetAppsAccessCallHistory {
	Write-Output "Disabling : Settings : Privacy : Call History : Allow Windows Apps Access Call History..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessCallHistory" -Type DWord -Value 2
}

# Enabling : Settings : Privacy : Call History: Allow Windows Apps Access Call History
Function EnableLetAppsAccessCallHistory {
	Write-Output "Enabling : Settings : Privacy : Call History : Allow Windows Apps Access Call History..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessCallHistory" -ErrorAction SilentlyContinue
}

# Disabling : Settings : Privacy : Email : Allow Windows Apps Access Email
Function DisableLetAppsAccessEmail {
	Write-Output "Disabling : Settings : Privacy : Email : Allow Windows Apps Access Email..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessEmail" -Type DWord -Value 2
}

# Enabling : Settings : Privacy : Email : Allow Windows Apps Access Email
Function EnableLetAppsAccessEmail {
	Write-Output "Enabling : Settings : Privacy : Email : Allow Windows Apps Access Email..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessEmail" -ErrorAction SilentlyContinue
}

# Disabling : Settings : Privacy : Tasks : Allow Windows Apps Access Tasks
Function DisableLetAppsAccessTasks {
	Write-Output "Disabling : Settings : Privacy : Tasks : Allow Windows Apps Access Tasks..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessTasks" -Type DWord -Value 2
}

# Enabling : Settings : Privacy : Tasks : Allow Windows Apps Access Tasks
Function EnableLetAppsAccessTasks {
	Write-Output "Enabling : Settings : Privacy : Tasks : Allow Windows Apps Access Tasks..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessTasks" -ErrorAction SilentlyContinue
}

# Disabling : Settings : Privacy : Messaging : Allow Windows Apps Access Messaging
Function DisableLetAppsAccessMessaging {
	Write-Output "Disabling : Settings : Privacy : Messaging : Allow Windows Apps Access Messaging..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessMessaging" -Type DWord -Value 2
}

# Enabling : Settings : Privacy : Messaging : Allow Windows Apps Access Messaging
Function EnableLetAppsAccessMessaging {
	Write-Output "Enabling : Settings : Privacy : Messaging : Allow Windows Apps Access Messaging..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessMessaging" -ErrorAction SilentlyContinue
}

# Disabling : Settings : Privacy : Other Devices : Allow Windows Apps Access to Trusted Devices
Function DisableLetAppsAccessTrustedDevices {
	Write-Output "Disabling : Settings : Privacy : Other Devices : Allow Windows Apps Access to Trusted Devices..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessTrustedDevices" -Type DWord -Value 2
}

# Enabling : Settings : Privacy : Other Devices : Allow Windows Apps Access to Trusted Devices
Function EnableLetAppsAccessTrustedDevices {
	Write-Output "Enabling : Settings : Privacy : Other Devices : Allow Windows Apps Access to Trusted Devices..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessTrustedDevices" -ErrorAction SilentlyContinue
}

# Disabling : Settings : Privacy : App Diagnostics : Let Windows Apps Access Diagnostic information about other Apps
Function DisableLetAppsGetDiagnosticInfo {
	Write-Output "Disabling : Settings : Privacy : App Diagnostics : Let Windows Apps Access Diagnostic information about other Apps..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsGetDiagnosticInfo" -Type DWord -Value 2
}

# Enabling : Settings : Privacy : App Diagnostics : Let Windows Apps Access Diagnostic information about other Apps
Function EnableLetAppsGetDiagnosticInfo {
	Write-Output "Enabling : Settings : Privacy : App Diagnostics : Let Windows Apps Access Diagnostic information about other Apps..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsGetDiagnosticInfo" -ErrorAction SilentlyContinue
}

# Disabling : Settings : Privacy : Notifications : Allow Windows Apps Access to Notifications
Function DisableLetAppsAccessNotifications {
	Write-Output "Disabling : Settings : Privacy : Notifications : Allow Windows Apps Access to Notifications..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessNotifications" -Type DWord -Value 2
}

# Enabling : Settings : Privacy : Notifications : Allow Windows Apps Access to Notifications
Function EnableLetAppsAccessNotifications {
	Write-Output "Enabling : Settings : Privacy : Notifications : Allow Windows Apps Access to Notifications..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessNotifications" -ErrorAction SilentlyContinue
}

# Disable - Settings : Privacy : General : Let Windows track app launches to improve Start and search results - 0 = Turn off 1 = Turn on
Function DisableStart_TrackProgs {

	Write-Output "Settings : Privacy : General : Let Windows track app launches to improve Start and search results"
	Set-ItemProperty -Path "hkcu:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -name "Start_TrackProgs" -value "0" -type "DWORD"
}

# Enable - Settings : Privacy : General : Let Windows track app launches to improve Start and search results - 0 = Turn off 1 = Turn on
Function EnableStart_TrackProgs {

	Write-Output "Settings : Let Windows track app launches to improve Start and search results"
	Set-ItemProperty -Path "hkcu:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -name "Start_TrackProgs" -value "1" -type "DWORD"
}

###############################################################################
#endregion Settings > Privacy
###############################################################################

###############################################################################
#region Privacy Tweaks
###############################################################################
###############################################################################
#endregion Privacy Tweaks
###############################################################################



###############################################################################
#region Security Tweaks
###############################################################################

# Enables : Sets the Choose when updates are installed : deferred Windows update option for the Feature updates to 30 days and the Quality updates to 30 days
Function EnableDeferUpdatesPeriodInDays {

	Write-Output "Enabling : Settings : Update & Security : Advanced Options : Choose when updates are installed : deferred Windows update option for the Feature updates to 30 days and the Quality updates to 30 days"
	Set-ItemProperty -Path "hklm:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -name "DeferFeatureUpdatesPeriodInDays" -value "00000030" -type "DWORD"
	Set-ItemProperty -Path "hklm:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -name "DeferQualityUpdatesPeriodInDays" -value "00000030" -type "DWORD"
}

# Disables : Sets the Choose when updates are installed : deferred Windows update option for the Feature updates to 30 days and the Quality updates to 30 days
Function DisableDeferUpdatesPeriodInDays {

	Write-Output "Disabling : Settings : Update & Security : Advanced Options : Choose when updates are installed : deferred Windows update option for the Feature updates to 30 days and the Quality updates to 30 days"
	Remove-ItemProperty -Path "hklm:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -name "DeferFeatureUpdatesPeriodInDays"
	Remove-ItemProperty -Path "hklm:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -name "DeferQualityUpdatesPeriodInDays"
}

###############################################################################
#endregion Security Tweaks
###############################################################################



###############################################################################
#region Network Tweaks
###############################################################################
###############################################################################
#endregion Network Tweaks
###############################################################################



###############################################################################
#region Service Tweaks
###############################################################################
###############################################################################
#endregion Service Tweaks
###############################################################################



###############################################################################
#region UI Tweaks
###############################################################################

# Hide Cortana button
Function HideCortanaButton {
	Write-Output "Hiding : Cortana button..."
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowCortanaButton" -Type DWord -Value 0
}

# Show Cortana button
Function ShowCortanaButton {
	Write-Output "Showing : Cortana button..."
	Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowCortanaButton" -ErrorAction SilentlyContinue
}

# Disable - Settings : System : Notifications & Actions : Do NOT - Get notifications from apps and other senders - 0 = Off 1 = On
Function DisableSoftLanding {

	Write-Output "Settings : System : Notifications & Actions : Do NOT - Get notifications from apps and other senders"
	Set-ItemProperty -Path "hkcu:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -name "SoftLandingEnabled" -value "0" -type "DWORD"
}

# Enable - Settings : System : Notifications & Actions : Get notifications from apps and other senders - 0 = Off 1 = On
Function EnableSoftLanding {

	Write-Output "Settings : System : Notifications & Actions : Get notifications from apps and other senders"
	Set-ItemProperty -Path "hkcu:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -name "SoftLandingEnabled" -value "1" -type "DWORD"
}

# Disable Tile push notifications
Function EnableNoTileApplicationNotification {

	Write-Output "Settings : Tile push notifications"
	If (!(Test-Path "hkcu:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications"))
	{
		New-Item -Path "hkcu:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" | Out-Null
	}
	Write-Output "Control Panel : Taskbar : Disable Tile push notifications"
	Set-ItemProperty -Path "hkcu:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" -name "NoTileApplicationNotification" -value "1" -type "DWORD"
}

# Enable Tile push notifications
Function DisableNoTileApplicationNotification {

	Write-Output "Settings : Tile push notifications"
	Remove-ItemProperty -Path "hkcu:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" -name "NoTileApplicationNotification" -ErrorAction SilentlyContinue
	Remove-Item -Path "hkcu:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" -ErrorAction SilentlyContinue
}

# Disable - Taskbar Buttons Always Switch to the Last Active Windows
Function DisableLastActiveClick {

	Write-Output "Settings : Taskbar Buttons Always Switch to the Last Active Windows"
	Remove-ItemProperty -Path "hkcu:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -name "LastActiveClick"  -ErrorAction SilentlyContinue
}

# Enable - Taskbar Buttons Always Switch to the Last Active Windows
Function EnableLastActiveClick {

	Write-Output "Settings : Taskbar Buttons Always Switch to the Last Active Windows"
	Set-ItemProperty -Path "hkcu:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -name "LastActiveClick" -value "1" -type "DWORD"
}

###############################################################################
#endregion UI Tweaks
###############################################################################



###############################################################################
#region Explorer UI Tweaks
###############################################################################

# Double Click to open an item
Function DisableShellState {
    Write-Output "Control Panel : Explorer : Single-click to open an item ..."
    Set-ItemProperty -Path "hkcu:\Software\Microsoft\Windows\CurrentVersion\Explorer" -name "ShellState" -Value ([byte[]](0x24,0x00,0x00,0x00,0x34,0x28,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x13,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x62,0x00,0x00,0x00))
}

# Single-click to open an item
Function EnableShellState {
    Write-Output "Control Panel : Explorer : Single-click to open an item..."
    Set-ItemProperty -Path "hkcu:\Software\Microsoft\Windows\CurrentVersion\Explorer" -name "ShellState" -Value ([byte[]](0x24,0x00,0x00,0x00,0x1e,0xa8,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x13,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x62,0x00,0x00,0x00))
}

# Do NOT Show Pop-Up Description For Folders And Desktop Items - 0 = Hide 1 = Show
Function DisableShowInfoTip {
    Write-Output "Control Panel : Explorer : Show Pop-Up Description For Folders And Desktop Items..."
    Set-ItemProperty -Path "hkcu:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -name "ShowInfoTip" -value "0" -type "DWORD"
}

# Show Pop-Up Description For Folders And Desktop Items - 0 = Hide 1 = Show
Function EnableShowInfoTip {
    Write-Output "Control Panel : Explorer : Show Pop-Up Description For Folders And Desktop Items..."
    Set-ItemProperty -Path "hkcu:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -name "ShowInfoTip" -value "1" -type "DWORD"
}

# Enabling : Remove duplicate Drive Letter entry from Explorer
Function EnableDelegateFolders {

	Write-Output "Removing : Duplicate Drive Letter entry from Explorer"
	If (Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}")
	{
		Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}"
	}
}

Function DisableDelegateFolders {
# Disabling : Remove duplicate Drive Letter entry from Explorer

	Write-Output "Defaulting : Duplicate Drive Letter entry from Explorer"
    Write-Output "Reset to Default - Remove duplicate Drive Letter entry from Explorer"
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}"))
	{
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}" | Out-Null
	}
}

# Disabling : Search History in Windows 10 File Explorer
Function DisableSearchBoxSuggestions {
	Write-Output "Disabling : Search History in Windows 10 File Explorer..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "DisableSearchBoxSuggestions" -Type DWord -Value 1
}

# Enabling : Search History in Windows 10 File Explorer
Function EnableSearchBoxSuggestions {
	Write-Output "Enabling : Search History in Windows 10 File Explorer..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "DisableSearchBoxSuggestions" -ErrorAction SilentlyContinue
    Remove-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -ErrorAction SilentlyContinue
}

###############################################################################
#endregion Explorer UI Tweaks
###############################################################################



###############################################################################
#region Application Tweaks
###############################################################################
###############################################################################
#endregion Application Tweaks
###############################################################################



###############################################################################
#region Server specific Tweaks
###############################################################################
###############################################################################
#endregion Server specific Tweaks
###############################################################################



###############################################################################
#region Unpinning
###############################################################################
###############################################################################
#endregion Unpinning
###############################################################################



###############################################################################
#region Auxiliary Functions
###############################################################################

# Wait for key press
Function WaitForKey {
	Write-Output "`nPress any key to continue..."
	[Console]::ReadKey($true) | Out-Null
}

# Restart computer
Function Restart {
	Write-Output "Restarting..."
	Restart-Computer
}

###############################################################################
#endregion Auxiliary Functions
###############################################################################

# Export functions
Export-ModuleMember -Function *