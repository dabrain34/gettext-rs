echo $args[0]
echo $args[1]

if (-not (Get-Command Expand-7Zip -ErrorAction Ignore)) {
    Install-Package -Scope CurrentUser -Force 7Zip4PowerShell > $null
}

Expand-7Zip $args[0] $args[1]
