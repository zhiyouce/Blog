# VS code & git 使用proxy

## http代理
```powershell
 hpts -s 127.0.0.1:1080 -p 1082 

```

## [git proxy](https://gist.github.com/evantoli/f8c23a37eb3558ab8765)
```powershell
git config --global http.proxy http://proxyUsername:proxyPassword@proxy.server.com:port
```

> configure `~/.gitconfig` file using the `--global` switch, or local to a repository in its `.git/config` file


```powershell
# set
# git config --global http.proxy http://proxyUsername:proxyPassword@proxy.server.com:port
git config --global http.proxy http://127.0.0.1:1082 # globe
git config http.proxy http://127.0.0.1:1082 # local

# grep
git config -l --global | grep http  # this will print the line if it is in the global file
git config -l | grep http # this will print the line if it is in the repo config file

# unset
git config --global --unset-all http.proxy # to remove it from the global config
git config --unset-all http.proxy  # to remove it from the local repo config file
```