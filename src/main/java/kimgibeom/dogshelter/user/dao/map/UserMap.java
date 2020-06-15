package kimgibeom.dogshelter.user.dao.map;

import java.util.List;

import kimgibeom.dogshelter.user.domain.User;

public interface UserMap {
	int addUser(User user);

	List<User> getUsers();
}