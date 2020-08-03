module github.com/mfahrul/learn-go-micro/shippy-cli-consignment

go 1.14

// replace github.com/mfahrul/learn-go-micro/shippy-service-consignment => ../shippy-service-consignment

replace google.golang.org/grpc => google.golang.org/grpc v1.26.0

require (
	github.com/mfahrul/learn-go-micro/shippy-service-consignment v0.0.0-20200730051039-02e140fc4a95
	github.com/micro/go-micro/v2 v2.9.1
	github.com/stretchr/testify v1.6.1 // indirect
	golang.org/x/crypto v0.0.0-20200728195943-123391ffb6de // indirect
	google.golang.org/protobuf v1.25.0 // indirect
)
