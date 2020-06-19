package kimgibeom.dog.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@RequestMapping // 사용자페이지에서 관리자페이지 main으로 가는 controller
	public String adminMain() {
		return "admin/main";
	}
}
