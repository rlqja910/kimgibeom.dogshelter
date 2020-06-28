package kimgibeom.dog.dog.dao.map;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import kimgibeom.dog.dog.domain.Dog;

public interface DogMap {
	List<Dog> getDogs(); // 동물 리스트 뽑음

	List<Dog> searchDogs(@Param("dogKind") String dogKind, @Param("dogEntDate") Date dogEntDate);
}
