package com.ga.sweethome.dao;

import org.springframework.data.repository.CrudRepository;
import com.ga.sweethome.model.House;

public interface HouseDao extends CrudRepository<House, Integer> {
	public House findById(int id);

}
