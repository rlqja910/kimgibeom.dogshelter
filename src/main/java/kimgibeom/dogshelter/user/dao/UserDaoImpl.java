package kimgibeom.dogshelter.user.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kimgibeom.dogshelter.user.dao.map.UserMap;
import kimgibeom.dogshelter.user.domain.User;

@Repository
public class UserDaoImpl implements UserDao {
	@Autowired
	private UserMap userMap;

	@Override
	public int addUser(User user) {
		return userMap.addUser(user);
	}

}
