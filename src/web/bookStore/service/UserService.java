package web.bookStore.service;


import java.util.Date;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import web.bookStore.Iservice.IUserService;
import web.bookStore.bean.User;
import web.bookStore.exception.PasswordNotMatchException;
import web.bookStore.exception.UpdateUserImgException;
import web.bookStore.exception.UserNotFoundException;
import web.bookStore.exception.UsernameAlreadyExistException;
import web.bookStore.mapper.UserMapper;


@Service
public class UserService implements IUserService {

	@Resource
	private UserMapper userMapper;
	
	public boolean checkUserByUsername(String username) {
	
		return 	userMapper.selectUserByUsername(username)!=null;
	}
	
	public boolean checkUserByEmail(String email) {
		return 	userMapper.selectUserByEmail(email)!=null;
	}
	
	@Override
	public boolean checkUserByPhone(String phone) {
		
		return 	userMapper.selectUserByPhone(phone)!=null;
	}

	public void register(User user) {
		User user1 = userMapper.selectUserByUsername(user.getUsername());
		if(user1==null) {
			userMapper.insertUser(user);
		}else {
			throw new UsernameAlreadyExistException("用户名已被使用");
		}
	}

	@Override
	public User login(String username, String userpwd) {
		User user = userMapper.selectUserByUsername(username);
		if(user==null) {
			throw new UserNotFoundException("用户名不存在");
		}else{
			if(user.getUserpwd().equals(userpwd)) {
				return user;
			}else {
				throw new PasswordNotMatchException("密码不正确");
			}
		}
	}

	@Override
	public User selectUserById(Integer id) {
		// TODO Auto-generated method stub
		User user = userMapper.selectUserById(id);
		if (user == null) {
			throw new UserNotFoundException("找不到用户");
		} else {
			return user;
		}
	}

	
}
