package web.bookStore.mapper;

import org.apache.ibatis.annotations.Param;

import web.bookStore.bean.User;



public interface UserMapper {

	public User selectUserByUsername(String username);
	
	public User selectUserByEmail(String email);
	
	public User selectUserByPhone(String phone);
	
	public void insertUser(User user);
	
	public User selectUserById(Integer id);
	
	public void updateUser(User user);
	
	void updateUserImg(@Param(value = "image") String img,@Param(value = "id") Integer id);


	
}
