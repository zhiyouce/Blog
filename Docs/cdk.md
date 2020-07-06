## npm update 
- checkout package.json 

## windows need this
```powershell
$env:GOOS = "linux"
$env:GOARCH = "amd64"
$env:CGO_ENABLED = "0"
go build -o main main.go
~\Go\Bin\build-lambda-zip.exe -o main.zip main
```
- [build-lambda-zip.exe](https://github.com/aws/aws-lambda-go/blob/26aa36445a99488623e4b21c0e5c0b4dc684eff9/cmd/build-lambda-zip/main.go#L53)
- 环境变量改变os和架构编译执行文件
- main.go 改变lambda函数的执行权限

## fromAsset 
- 直接添加zip函数路径
- build-lambda-zip.exe 生成zip文件后解压的执行文件在lambda的主机上有执行权限
- 要注意.build中残留的文件，fromAsset先上传该文件

## cdk 有很多机制保持源码文件不变
- cdk s3 bucket
- assert 

## aws-lambda-golang 
- 这个construct 在windows机器上不好使是因为编译机制问题，收到update lambda函数可以解决问题。 