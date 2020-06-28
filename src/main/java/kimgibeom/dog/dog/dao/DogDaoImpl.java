package kimgibeom.dog.dog.dao;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kimgibeom.dog.dog.dao.map.DogMap;
import kimgibeom.dog.dog.domain.Dog;

@Repository
public class DogDaoImpl implements DogDao {
	@Autowired
	private DogMap dogMap;

	@Override
	public List<Dog> getDogs() {
		return dogMap.getDogs();
	}

	@Override
	public List<Dog> searchDogs(String dogKind, Date dogEntDate) {
		return dogMap.searchDogs(dogKind, dogEntDate);
	}
}