package kimgibeom.dog.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AdminCheckInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean isCheck = true;
		System.out.println("interceptor 진입");
		String urlFirstPath = (request.getServletPath().split("/"))[1]; // url servletPath 맨앞만 추출
		try {
			if (urlFirstPath.equals("admin")) { // login 진입했을때
				System.out.println("인터맨----------1");
				if (((String) request.getSession().getAttribute("userId")).equals("admin")) { // 관리자계정이면 진입
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
