package kimgibeom.dog.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kimgibeom.dog.user.domain.User;
import kimgibeom.dog.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("/login")
	public void login() {
	}

	@RequestMapping(value = "/main", method = RequestMethod.POST) //
	public String main() {
		return "redirect:main";
	}

	@RequestMapping("/join") //회원가입 버튼 누를시
	public void join() {
	}

	@RequestMapping("/joinProc") //회원가입
	@ResponseBody
	public void joinProc(User user) {
		userService.writeUser(user);
	}

	@RequestMapping("/idCheck") //회원가입시 중복확인
	@ResponseBody
	public boolean idCheck(String userId) {
		System.out.println(userId + "를 가지고 controller 진입");
		if (userService.idCheck(userId)) { // 중복이 아니면 true로 출력
			return true;
		} else { // 이미 사용중인 ID인 경우 false 값 return
			return false;
		}
	}

	@RequestMapping("/loginProc") //로그인 정보확인
	@ResponseBody
	public int loginProc(HttpServletRequest request, String userId, String userPw) {
		System.out.println("controller 진입");
		String pw = userService.readuserPw(userId); // 입력한 ID의 PW를 추출
		System.out.println(pw); // null일경우 아이디가 없다는 의미

		if (userPw.equals(pw)) { // 로그인 성공
			request.getSession().setAttribute("userId", userId);

			return 1;// 로그인 성공
		} else if (pw == null) { // 아이디가 없음
			return 0;// 아이디가 아예 없음
		} else {
			return -1; // 암호가 틀림
		}
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		System.out.println("logout진입");
		request.getSession().invalidate();
		return "redirect:/user/login";
	}
	
	//관리자 페이지 Handler-----------------------------------------------------------------------------
	
}
