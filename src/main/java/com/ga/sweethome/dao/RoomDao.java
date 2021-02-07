package com.ga.sweethome.dao;

import org.springframework.data.repository.CrudRepository;
import com.ga.sweethome.model.Room;

public interface RoomDao extends CrudRepository<Room, Integer> {
	public Room findById(int id); 

}
