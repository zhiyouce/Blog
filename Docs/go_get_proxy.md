## go get proxy on windows

### method 1
```powershell
set http_proxy=http://proxy.example.com:port
```
```powershell
git config [--global] http.proxy http://proxy.example.com:port
```

### method 2 
```
export GO111MODULE=on
```
```
export GOPROXY=https://goproxy.io
```