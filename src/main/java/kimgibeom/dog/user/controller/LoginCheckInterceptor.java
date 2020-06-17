package kimgibeom.dog.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		try {
			if (request.getSession().getAttribute("userId") == null) {
				response.sendRedirect("login");
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return true;
	}
}
