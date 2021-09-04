package jo.secondstep.controllers;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
@Repository("regionRepository")
public interface RegionRepository extends CrudRepository<Region,Integer>{

}
