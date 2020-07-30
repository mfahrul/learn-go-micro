module github.com/mfahrul/learn-go-micro/shippy-service-consignment

go 1.14

// replace github.com/mfahrul/learn-go-micro/shippy-service-vessel => ../shippy-service-vessel

replace google.golang.org/grpc => google.golang.org/grpc v1.26.0

require (
	github.com/golang/protobuf v1.4.2
	github.com/mfahrul/learn-go-micro/shippy-service-vessel v0.0.0-20200725102548-fce9b45454d5
	github.com/micro/go-micro/v2 v2.9.1
	go.mongodb.org/mongo-driver v1.3.5
	google.golang.org/protobuf v1.23.0
)
