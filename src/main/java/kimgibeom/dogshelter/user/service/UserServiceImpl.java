package kimgibeom.dogshelter.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kimgibeom.dogshelter.user.dao.UserDao;
import kimgibeom.dogshelter.user.domain.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	@Override
	public int writeUser(User user) {
		return userDao.addUser(user);
	}

	@Override
	public List<User> readUsers() {
		return userDao.getUsers();
	}

	@Override
	public boolean idCheck(String userId) {
		boolean availableId = true;
		List<User> users = userDao.getUsers();
		for (User user : users) {
			if (user.getUserId() == userId)
				availableId = false;
		}
		return availableId;
	}
}
