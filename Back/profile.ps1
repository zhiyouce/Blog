set-alias -Name:"make" -Value:"C:\Program Files (x86)\GnuWin32\bin\make.exe" -Description:"" -Option:"ReadOnly, AllScope"
set-alias -Name:"cloc" -Value:"C:\Users\zhiyo\Downloads\cloc-1.64.exe" -Description:"" -Option:"ReadOnly, AllScope"
set-alias -Name:"grep" -Value:"Select-String" -Description:"" -Option:"ReadOnly, AllScope"
function curlIP {
  $ipcUrl ="http://api.db-ip.com/v2/free/" + $args[0]
  curl $ipcUrl
}
Set-Alias IP curlIP