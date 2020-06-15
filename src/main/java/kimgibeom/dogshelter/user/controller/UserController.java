package kimgibeom.dogshelter.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
