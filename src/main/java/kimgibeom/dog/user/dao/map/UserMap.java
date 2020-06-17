package kimgibeom.dog.user.dao.map;

import java.util.List;

import kimgibeom.dog.user.domain.User;

public interface UserMap {
	int addUser(User user);

	List<User> getUsers();
	
	String getuserPw(String userId);
}