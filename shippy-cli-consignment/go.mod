module github.com/mfahrul/learn-go-micro/shippy-cli-consignment

go 1.14

// replace github.com/mfahrul/learn-go-micro/shippy-service-consignment => ../shippy-service-consignment

replace google.golang.org/grpc => google.golang.org/grpc v1.26.0

require (
	github.com/mfahrul/learn-go-micro/shippy-service-consignment v0.0.0-20200714172552-1ba8dd8125af
	github.com/micro/go-micro/v2 v2.9.1
)
