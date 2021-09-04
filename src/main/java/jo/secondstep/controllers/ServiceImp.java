package jo.secondstep.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("hrService")
public class ServiceImp implements HrService{
	@Autowired
	RegionRepository regionRepository;

	@Override
	public Iterable<Region> findAll() {
		return regionRepository.findAll();
	}
	

}
