package kimgibeom.dog.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean isCheck = true;
		System.out.println("interceptor 진입");
		try {
			if (request.getRequestURI().equals("/dog/user/login")) { // login 진입했을때
				if (request.getSession().getAttribute("userId") == null) { // 로그인 안되어있으면 진입
				} else {
					response.sendRedirect("/dog");
					return false;
				}
			}
			if (request.getRequestURI().equals("/dog/user/join")) {
				if (request.getSession().getAttribute("userId") == null) { // 로그인 안되어있으면 진입
				} else {
					response.sendRedirect("/dog");
					return false;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return isCheck;
	}
}
