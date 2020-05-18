## powershell six profiles
> Windows PowerShell console and the Windows PowerShell ISE have their own profiles

### [$profile](https://web.archive.org/web/20121105003839/http://blogs.technet.com/b/heyscriptingguy/archive/2012/05/21/understanding-the-six-powershell-profiles.aspx)
- Windows PowerShell console
```
PS C:\> $profile

C:\Users\ed.IAMMRED\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
```

- Windows PowerShell ISE
```
PS C:\Users\ed.IAMMRED> $profile

C:\Users\ed.IAMMRED\Documents\WindowsPowerShell\Microsoft.PowerShellISE_profile.ps1
```

```
PS C:\Users\zhiyo> $PROFILE | Get-Member -MemberType noteproperty | select name

Name
----
AllUsersAllHosts
AllUsersCurrentHost
CurrentUserAllHosts
CurrentUserCurrentHost
```


(1). PS5.1 console
```
PS C:\Users\zhiyo> $PROFILE | Format-List * -Force


AllUsersAllHosts       : C:\Windows\System32\WindowsPowerShell\v1.0\profile.ps1
AllUsersCurrentHost    : C:\Windows\System32\WindowsPowerShell\v1.0\Microsoft.PowerShell_profile.ps1
CurrentUserAllHosts    : C:\Users\zhiyo\Documents\WindowsPowerShell\profile.ps1
CurrentUserCurrentHost : C:\Users\zhiyo\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
Length                 : 75
```

(2). PS5.1 ISE
```
PS C:\Users\zhiyo> $PROFILE | Format-List * -Force


AllUsersAllHosts       : C:\Windows\System32\WindowsPowerShell\v1.0\profile.ps1
AllUsersCurrentHost    : C:\Windows\System32\WindowsPowerShell\v1.0\Microsoft.PowerShell_profile.ps1
CurrentUserAllHosts    : C:\Users\zhiyo\Documents\WindowsPowerShell\profile.ps1
CurrentUserCurrentHost : C:\Users\zhiyo\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
Length                 : 75
```

(3). PS7 console
```
PS C:\Users\zhiyo\Documents\WindowsPowerShell> $PROFILE | Format-List * -Force

AllUsersAllHosts       : C:\Program Files\PowerShell\7\profile.ps1
AllUsersCurrentHost    : C:\Program Files\PowerShell\7\Microsoft.PowerShel
                         l_profile.ps1
CurrentUserAllHosts    : C:\Users\zhiyo\Documents\PowerShell\profile.ps1
CurrentUserCurrentHost : C:\Users\zhiyo\Documents\PowerShell\Microsoft.Pow
                         erShell_profile.ps1
Length                 : 68
```