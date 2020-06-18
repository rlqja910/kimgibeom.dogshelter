package kimgibeom.dog.dog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kimgibeom.dog.dog.dao.DogDao;
import kimgibeom.dog.dog.domain.Dog;

@Service
public class DogServiceImpl implements DogService {
	@Autowired
	private DogDao dogDao;

	@Override
	public List<Dog> readDogs() {
		return dogDao.getDogs();
	}

}
