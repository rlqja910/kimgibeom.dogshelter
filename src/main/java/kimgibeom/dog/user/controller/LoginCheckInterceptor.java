package kimgibeom.dog.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean isCheck = true;
		System.out.println("interceptor 진입");
		String urlFirstPath = (request.getServletPath().split("/"))[1];
		try {
			if (urlFirstPath.equals("user")) { // login 진입했을때
				System.out.println("인터맨----------1");
				if (request.getSession().getAttribute("userId") == null) { // 로그인 안되어있으면 진입
					System.out.println("인터맨----------2");
				} else {
					System.out.println("인터맨----------3");
					response.sendRedirect("/dog");
					return false;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("인터맨----------10");
		}

		return isCheck;
	}
}
