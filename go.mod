module github.com/coreos/etcd-operator

go 1.15

require (
	cloud.google.com/go/storage v1.10.0
	github.com/Azure/azure-sdk-for-go v43.3.0+incompatible
	github.com/Azure/go-autorest/autorest v0.11.18
	github.com/Azure/go-autorest/autorest/to v0.4.0 // indirect
	github.com/aliyun/aliyun-oss-go-sdk v2.1.6+incompatible
	github.com/aws/aws-sdk-go v1.36.25
	github.com/baiyubin/aliyun-sts-go-sdk v0.0.0-20180326062324-cfa1a18b161f // indirect
	github.com/coreos/etcd v3.4.14+incompatible
	github.com/coreos/go-systemd v0.0.0-20191104093116-d3cd4ed1dbcf // indirect
	github.com/dnaeon/go-vcr v1.1.0 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.2.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway v1.14.5 // indirect
	github.com/imdario/mergo v0.3.7 // indirect
	github.com/pborman/uuid v1.2.1
	github.com/pkg/errors v0.9.1
	github.com/prometheus/client_golang v1.9.0
	github.com/satori/go.uuid v1.2.0 // indirect
	github.com/sirupsen/logrus v1.8.0
	github.com/tmc/grpc-websocket-proxy v0.0.0-20200427203606-3cfed13b9966 // indirect
	go.uber.org/zap v1.15.0 // indirect
	golang.org/x/oauth2 v0.0.0-20210819190943-2bc19b11175f
	golang.org/x/time v0.0.0-20210723032227-1f47c861a9ac
	google.golang.org/api v0.43.0
	google.golang.org/grpc/examples v0.0.0-20220215234149-ec717cad7395 // indirect
	k8s.io/api v0.23.4
	k8s.io/apiextensions-apiserver v0.20.4
	k8s.io/apimachinery v0.23.4
	k8s.io/client-go v0.23.4
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
