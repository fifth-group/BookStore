package web.bookStore.Iservice;

import web.bookStore.bean.User;

public interface IUserService {
	/**
	 * 
	 * 
	 * */
	public boolean checkUserByUsername(String username);
	
	public boolean checkUserByEmail(String email);
	
	public boolean checkUserByPhone(String phone);
	
	public void register(User user);
	
	public User login(String username, String password);
	
	User selectUserById(Integer id);

	
	
	
}
