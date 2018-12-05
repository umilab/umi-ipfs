#!/bin/sh
#by UMI(@adrienDev)
#installation of Go

wget https://storage.googleapis.com/golang/go1.9.3.linux-amd64.tar.gz

sha256sum go1.9.3.linux-amd64.tar.gz

tar -xvf go1.9.3.linux-amd64.tar.gz

sudo chown -R root:root ./go
sudo mv go /usr/local

echo "export GOPATH=\$HOME/go" >> ~/.profile
echo "PATH=\$PATH:/usr/local/go/bin:\$GOPATH/bin" >> ~/.profile


source ~/.profile

#Test the go installation
mkdir go-test
mkdir -p go-test/src/hello && cd go-test/src/hello
touch hello.go

echo "package main">hello.go 
echo 'import "fmt"'>>hello.go
echo "func main() {">>hello.go
echo    'fmt.Printf("hello, world\n")'>>hello.go
echo "}">>hello.go

go build
./hello

echo "Finished installing..."
go version
echo "thank :) ...enjoy it!"
