package kimgibeom.dogshelter.user.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kimgibeom.dogshelter.user.dao.map.UserMapper;
import kimgibeom.dogshelter.user.domain.User;

@Repository
public class UserDaoImpl implements UserDao {
	@Autowired
	private UserMapper userMapper;

	@Override
	public int addUser(User user) {
		return userMapper.addUser(user);
	}

}
