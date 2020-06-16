package kimgibeom.dogshelter.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kimgibeom.dogshelter.user.domain.User;
import kimgibeom.dogshelter.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("/login")
	public void login() {
	}

	@RequestMapping("/join")
	public void join() {
	}

	@RequestMapping("/joinProc")
	@ResponseBody
	public void joinProc(User user) {
		userService.writeUser(user);
	}

	@RequestMapping("/idCheck")
	@ResponseBody
	public boolean idCheck(String userId) {
		System.out.println(userId + "를 가지고 controller 진입");
		if (userService.idCheck(userId)) { // 중복이 아니면 true로 출력
			return true;
		} else { // 이미 사용중인 ID인 경우 false 값 return
			return false;
		}
	}
}
