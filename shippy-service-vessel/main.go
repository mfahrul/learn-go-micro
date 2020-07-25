package main

import (
	"context"
	"errors"
	"log"

	pb "github.com/mfahrul/learn-go-micro/shippy-service-vessel/proto/vessel"
	"github.com/micro/go-micro/v2"
)

//Repository -
type Repository interface {
	FindAvailable(*pb.Specification) (*pb.Vessel, error)
}

//VesselRepository -
type VesselRepository struct {
	vessels []*pb.Vessel
}

//FindAvailable -
func (repo *VesselRepository) FindAvailable(spec *pb.Specification) (*pb.Vessel, error) {
	for _, vessel := range repo.vessels {
		if spec.Capacity <= vessel.Capacity && spec.MaxWeight <= vessel.MaxWeight {
			return vessel, nil
		}
	}
	return nil, errors.New("No vessel found by that spec")
}

type vesselService struct {
	repo Repository
}

func (s *vesselService) FindAvailable(ctx context.Context, req *pb.Specification, res *pb.Response) error {
	vessel, err := s.repo.FindAvailable(req)
	if err != nil {
		return err
	}
	res.Vessel = vessel
	return nil
}

func main() {
	vessels := []*pb.Vessel{
		{
			Id:        "vessel001",
			Name:      "Boaty McBoatface",
			MaxWeight: 200000,
			Capacity:  500,
		},
	}
	repo := &VesselRepository{vessels}

	service := micro.NewService(
		micro.Name("shippy.service.vessel"),
	)

	service.Init()

	if err := pb.RegisterVesselServiceHandler(service.Server(), &vesselService{repo}); err != nil {
		log.Panic(err)
	}

	if err := service.Run(); err != nil {
		log.Panic(err)
	}
}
