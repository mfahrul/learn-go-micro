module shippy-cli-consignment

go 1.14

// replace shippy.service.consignment => ../shippy-service-consignment

replace google.golang.org/grpc => google.golang.org/grpc v1.26.0

require github.com/micro/go-micro/v2 v2.9.1
