package kimgibeom.dog.dog.service;

import java.util.List;

import kimgibeom.dog.dog.domain.Dog;

public interface DogService {
	List<Dog> readDogs();

	List<Dog> findDogs(String dogKind, String dogEntDate);
}
