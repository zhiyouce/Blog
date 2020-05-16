# VS code & git 使用proxy

## http代理
```
 hpts -s 127.0.0.1:1080 -p 1082 

```

## ![git proxy](https://gist.github.com/evantoli/f8c23a37eb3558ab8765)
```
git config --global http.proxy http://proxyUsername:proxyPassword@proxy.server.com:port
```
示例：
```

git config --global http.proxy http://127.0.0.1:1082
```
> configure `~/.gitconfig` file using the `--global` switch, or local to a repository in its `.git/config` file