package kimgibeom.dog.dog.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kimgibeom.dog.dog.domain.Dog;
import kimgibeom.dog.dog.service.DogService;
import net.sf.json.JSONArray;

@Controller
@RequestMapping("/admin/dog")
public class adminDogController {
	@Autowired
	private DogService dogService;

	@RequestMapping("/dogRegist")
	public void dogRegist() {
	}

	@RequestMapping("/dogListView")
	public void dogListView(Model model) {
		List<Dog> dogs = dogService.readDogs();
		JSONArray jsonDogArray = new JSONArray();

		int dogsCnt = dogs.size(); // 데이터 개수
		model.addAttribute("dogsCnt", dogsCnt);
		System.out.println(dogsCnt + "개의 데이터가 있음--admin");

		int pageCnt = 0;
		if (dogsCnt % 8 == 0) {
			pageCnt = dogsCnt / 8; // 총 페이지 개수 (마지막 페이지 번호)
		} else {
			pageCnt = dogsCnt / 8 + 1;
		}
		System.out.println(dogsCnt);
		System.out.println("총 페이지 개수 --admin: " + pageCnt);
		// 총페이지 개수 model 저장-------------------------
		model.addAttribute("totalPageCnt", pageCnt);

		int lastPageDataCnt = dogsCnt % 8;// 마지막 페이지 데이터 개수
		if (lastPageDataCnt == 0) {
			lastPageDataCnt = 8;
		}
		if (dogsCnt == 0) {
			lastPageDataCnt = 0;
		}
		model.addAttribute("lastPageDataCnt", lastPageDataCnt);
		System.out.println("마지막 페이지 데이터 개수--admin:" + lastPageDataCnt);

		if (dogsCnt > 0 && dogsCnt <= 8) { // 데이터가 8개 이하면 페이지가 1페이지밖에 없으므로 기억해둔다.
			model.addAttribute("isOnePage", "true");// 데이터가 8개 이하인지 boolean값 model
													// 저장-------------------------
			System.out.println(dogs);
			model.addAttribute("onlyOnePageData", jsonDogArray.fromObject(dogs));// 데이터가 8개 이하면 dog값들 model
			// 저장-------------------------
			System.out.println(dogs);
			System.out.println("isOnePage에 true 박힘--admin");
		} else if (dogsCnt == 0) {
			model.addAttribute("isOnePage", "true");
			model.addAttribute("pageData", "empty");
			System.out.println("isOnePage에 true박히고 pageData에 empty 박힘--admin");
		} else {
			model.addAttribute("isOnePage", "false");// 데이터가 9개 이상인지 boolean값 model
														// 저장-------------------------
			List<Dog> dogList = new ArrayList<Dog>();
			for (int i = 1; i <= pageCnt; i++) { // 모든페이지 데이터를 저장한다.
				System.out.println("for");

				if (i == pageCnt) { // 마지막 페이지 저장할때
					int cnt = 0;
					System.out.println("for접근:마지막페이지-" + i + "페이지--admin");
					for (int j = 1; j <= lastPageDataCnt; j++) {
						dogList.add(dogs.get((i - 1) * 8 + cnt++));
					}
				} else {
					int cnt = 0;
					System.out.println("for접근:" + i + "번째페이지임--admin");
					for (int j = 1; j <= 8; j++) {// 마지막 페이지가 아닌 데이터들을 저장할때
						dogList.add(dogs.get((i - 1) * 8 + cnt++));
					}
				}
			}
			model.addAttribute("pageData", jsonDogArray.fromObject(dogList));// 모든페이지 데이터 저장
		}
	}

	@RequestMapping("/dogSearch") // 검색 리스트 추출
	@ResponseBody
	public HashMap<String, Object> getDogs(String dogTitle) {
		System.out.println(dogTitle + "==제목=============--admin");
		HashMap<String, Object> map = new HashMap<String, Object>();

		List<Dog> dogs = dogService.findDogsForTitle(dogTitle);

		JSONArray jsonDogArray = new JSONArray();

		int dogsCnt = dogs.size(); // 데이터 개수
		map.put("dogsCnt", dogsCnt);
		System.out.println(dogsCnt + "개의 데이터가 있음--admin");

		int pageCnt = 0;
		if (dogsCnt % 8 == 0) {
			pageCnt = dogsCnt / 8; // 총 페이지 개수 (마지막 페이지 번호)
		} else {
			pageCnt = dogsCnt / 8 + 1;
		}
		System.out.println(dogsCnt);
		System.out.println("총 페이지 개수--admin : " + pageCnt);
		// 총페이지 개수 model 저장-------------------------
		map.put("totalPageCnt", pageCnt);

		int lastPageDataCnt = dogsCnt % 8;// 마지막 페이지 데이터 개수
		if (lastPageDataCnt == 0) {
			lastPageDataCnt = 8;
		}
		if (dogsCnt == 0) {
			lastPageDataCnt = 0;
		}
		map.put("lastPageDataCnt", lastPageDataCnt);
		System.out.println("마지막 페이지 데이터 개수--admin:" + lastPageDataCnt);

		if (dogsCnt > 0 && dogsCnt <= 8) { // 데이터가 8개 이하면 페이지가 1페이지밖에 없으므로 기억해둔다.
			// 데이터가 8개 이하인지 boolean값
			// 저장-------------------------
			map.put("isOnePage", true);
			// 데이터가
			// 8개 이하면 dog값들
			map.put("onlyOnePageData", dogs);
			// 저장-------------------------
			System.out.println(dogs);
			System.out.println("isOnePage에 true 박힘--admin");
		} else if (dogsCnt == 0) {
			map.put("isOnePage", true);
			map.put("pageData", "empty");
			System.out.println("isOnePage에 true박히고 pageData에 empty 박힘--admin");
		} else {
			// 데이터가 9개 이상인지 boolean값
			// 저장-------------------------
			map.put("isOnePage", false);
			List<Dog> dogList = new ArrayList<Dog>();
			for (int i = 1; i <= pageCnt; i++) { // 모든페이지 데이터를 저장한다.
				System.out.println("for");

				if (i == pageCnt) { // 마지막 페이지 저장할때
					int cnt = 0;
					System.out.println("for접근:마지막페이지-" + i + "페이지--admin");
					for (int j = 1; j <= lastPageDataCnt; j++) {
						dogList.add(dogs.get((i - 1) * 8 + cnt++));
					}
				} else {
					int cnt = 0;
					System.out.println("for접근:" + i + "번째페이지임--admin");
					for (int j = 1; j <= 8; j++) {// 마지막 페이지가 아닌 데이터들을 저장할때
						dogList.add(dogs.get((i - 1) * 8 + cnt++));
					}
				}
			}
			// 모든페이지 데이터
			// 저장
			map.put("pageData", dogList);
		}
		return map;
	}

	@RequestMapping("/beforeAdoptSearch") // 검색 리스트 추출
	@ResponseBody
	public HashMap<String, Object> searchBeforeAdopt(String dogTitle) {
		System.out.println(dogTitle + "==제목=============--admin");
		HashMap<String, Object> map = new HashMap<String, Object>();

		List<Dog> dogs = dogService.findBeforeAdoptDogs(dogTitle);

		JSONArray jsonDogArray = new JSONArray();

		int dogsCnt = dogs.size(); // 데이터 개수
		map.put("dogsCnt", dogsCnt);
		System.out.println(dogsCnt + "개의 데이터가 있음--admin");

		int pageCnt = 0;
		if (dogsCnt % 8 == 0) {
			pageCnt = dogsCnt / 8; // 총 페이지 개수 (마지막 페이지 번호)
		} else {
			pageCnt = dogsCnt / 8 + 1;
		}
		System.out.println(dogsCnt);
		System.out.println("총 페이지 개수--admin : " + pageCnt);
		// 총페이지 개수저장-------------------------
		map.put("totalPageCnt", pageCnt);

		int lastPageDataCnt = dogsCnt % 8;// 마지막 페이지 데이터 개수
		if (lastPageDataCnt == 0) {
			lastPageDataCnt = 8;
		}
		if (dogsCnt == 0) {
			lastPageDataCnt = 0;
		}
		map.put("lastPageDataCnt", lastPageDataCnt);
		System.out.println("마지막 페이지 데이터 개수--admin:" + lastPageDataCnt);

		if (dogsCnt > 0 && dogsCnt <= 8) { // 데이터가 8개 이하면 페이지가 1페이지밖에 없으므로 기억해둔다.
			// 데이터가 8개 이하인지 boolean값
			// 저장-------------------------
			map.put("isOnePage", true);
			// 데이터가
			// 8개 이하면 dog값들
			map.put("onlyOnePageData", dogs);
			// 저장-------------------------
			System.out.println(dogs);
			System.out.println("isOnePage에 true 박힘--admin");
		} else if (dogsCnt == 0) {
			map.put("isOnePage", true);
			map.put("pageData", "empty");
			System.out.println("isOnePage에 true박히고 pageData에 empty 박힘--admin");
		} else {
			// 데이터가 9개 이상인지 boolean값
			// 저장-------------------------
			map.put("isOnePage", false);
			List<Dog> dogList = new ArrayList<Dog>();
			for (int i = 1; i <= pageCnt; i++) { // 모든페이지 데이터를 저장한다.
				System.out.println("for");

				if (i == pageCnt) { // 마지막 페이지 저장할때
					int cnt = 0;
					System.out.println("for접근:마지막페이지-" + i + "페이지--admin");
					for (int j = 1; j <= lastPageDataCnt; j++) {
						dogList.add(dogs.get((i - 1) * 8 + cnt++));
					}
				} else {
					int cnt = 0;
					System.out.println("for접근:" + i + "번째페이지임--admin");
					for (int j = 1; j <= 8; j++) {// 마지막 페이지가 아닌 데이터들을 저장할때
						dogList.add(dogs.get((i - 1) * 8 + cnt++));
					}
				}
			}
			// 모든페이지 데이터
			// 저장
			map.put("pageData", dogList);
		}
		return map;
	}

	@RequestMapping("/afterAdoptSearch") // 검색 리스트 추출
	@ResponseBody
	public HashMap<String, Object> searchAfterAdopt(String dogTitle) {
		System.out.println(dogTitle + "==제목=============--admin");
		HashMap<String, Object> map = new HashMap<String, Object>();

		List<Dog> dogs = dogService.findAfterAdoptDogs(dogTitle);

		JSONArray jsonDogArray = new JSONArray();

		int dogsCnt = dogs.size(); // 데이터 개수
		map.put("dogsCnt", dogsCnt);
		System.out.println(dogsCnt + "개의 데이터가 있음--admin");

		int pageCnt = 0;
		if (dogsCnt % 8 == 0) {
			pageCnt = dogsCnt / 8; // 총 페이지 개수 (마지막 페이지 번호)
		} else {
			pageCnt = dogsCnt / 8 + 1;
		}
		System.out.println(dogsCnt);
		System.out.println("총 페이지 개수--admin : " + pageCnt);
		// 총페이지 개수 저장-------------------------
		map.put("totalPageCnt", pageCnt);

		int lastPageDataCnt = dogsCnt % 8;// 마지막 페이지 데이터 개수
		if (lastPageDataCnt == 0) {
			lastPageDataCnt = 8;
		}
		if (dogsCnt == 0) {
			lastPageDataCnt = 0;
		}
		map.put("lastPageDataCnt", lastPageDataCnt);
		System.out.println("마지막 페이지 데이터 개수--admin:" + lastPageDataCnt);

		if (dogsCnt > 0 && dogsCnt <= 8) { // 데이터가 8개 이하면 페이지가 1페이지밖에 없으므로 기억해둔다.
			// 데이터가 8개 이하인지 boolean값
			// 저장-------------------------
			map.put("isOnePage", true);
			// 데이터가
			// 8개 이하면 dog값들
			map.put("onlyOnePageData", dogs);
			// 저장-------------------------
			System.out.println(dogs);
			System.out.println("isOnePage에 true 박힘--admin");
		} else if (dogsCnt == 0) {
			map.put("isOnePage", true);
			map.put("pageData", "empty");
			System.out.println("isOnePage에 true박히고 pageData에 empty 박힘--admin");
		} else {
			// 데이터가 9개 이상인지 boolean값
			// 저장-------------------------
			map.put("isOnePage", false);
			List<Dog> dogList = new ArrayList<Dog>();
			for (int i = 1; i <= pageCnt; i++) { // 모든페이지 데이터를 저장한다.
				System.out.println("for");

				if (i == pageCnt) { // 마지막 페이지 저장할때
					int cnt = 0;
					System.out.println("for접근:마지막페이지-" + i + "페이지--admin");
					for (int j = 1; j <= lastPageDataCnt; j++) {
						dogList.add(dogs.get((i - 1) * 8 + cnt++));
					}
				} else {
					int cnt = 0;
					System.out.println("for접근:" + i + "번째페이지임--admin");
					for (int j = 1; j <= 8; j++) {// 마지막 페이지가 아닌 데이터들을 저장할때
						dogList.add(dogs.get((i - 1) * 8 + cnt++));
					}
				}
			}
			// 모든페이지 데이터
			// 저장
			map.put("pageData", dogList);
		}
		return map;
	}
}