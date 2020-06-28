package kimgibeom.dog.dog.dao;

import java.sql.Date;
import java.util.List;

import kimgibeom.dog.dog.domain.Dog;

public interface DogDao {
	List<Dog> getDogs();

	List<Dog> searchDogs(String dogKind, Date dogEntDate);
}
