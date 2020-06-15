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
	public String joinProc(User user) {
		System.out.println(user + "--------------------");
		System.out.println(user.getUserId() + "--------------------");
		System.out.println(user.getUserPhone() + "--------------------");
		userService.writeUser(user);
		return "user/login";
	}
}
