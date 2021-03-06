package kimgibeom.dog.user.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kimgibeom.dog.user.domain.User;

public interface UserMap {
	int addUser(User user);

	List<User> getUsers();

	String getuserPw(String userId);

	// 유저 아이디 찾기 (이름과 폰번호로)
	User getUserId(@Param("userName") String userName, @Param("userPhone") String userPhone);

	// 유저 이메일 찾기 (아이디로)
	User getUserMail(String userId);

	// 유저 새 비밀번호 설정(아이디로 유저 찾고 새 비밀번호 입력)
	int updatePw(@Param("userId") String userId, @Param("userPw") String userPw);

	// 회원 탈퇴
	int delUser(String userId);
}