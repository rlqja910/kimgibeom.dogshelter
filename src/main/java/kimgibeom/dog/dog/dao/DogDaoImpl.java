package kimgibeom.dog.dog.dao;

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
	public List<Dog> searchDogs(String dogKind, String dogEntDate) {
		return dogMap.searchDogs(dogKind, dogEntDate);
	}

	@Override
	public List<Dog> searchDogsForTitle(String dogTitle) {
		return dogMap.searchDogsForTitle(dogTitle);
	}

	@Override
	public List<Dog> searchBeforeAdoptDogs(String dogTitle) {
		return dogMap.searchBeforeAdoptDogs(dogTitle);
	}

	@Override
	public List<Dog> searchAfterAdoptDogs(String dogTitle) {
		return dogMap.searchAfterAdoptDogs(dogTitle);
	}

	@Override
	public int addDog(Dog dog) {
		return dogMap.addDog(dog);
	}

	@Override
	public Dog searchDog(int dogNum) {
		return dogMap.searchDog(dogNum);
	}

}