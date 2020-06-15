package kimgibeom.dogshelter.user.dao;

import java.util.List;

import kimgibeom.dogshelter.user.domain.User;

public interface UserDao {
	int addUser(User user);

	List<User> getUsers();
}
