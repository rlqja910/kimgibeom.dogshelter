package kimgibeom.dog.dog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kimgibeom.dog.dog.domain.Dog;
import kimgibeom.dog.dog.service.DogService;

@Controller
@RequestMapping("/dog")
public class DogController {
	@Autowired
	private DogService dogService;

	@RequestMapping("/dogListView")
	public void dogListView() {
	}

	@RequestMapping("/dogList") // 유기견 리스트 추출
	public List<Dog> getDogs() {
		return dogService.readDogs();
	}
}