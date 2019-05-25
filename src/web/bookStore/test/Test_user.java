package web.bookStore.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import web.bookStore.Iservice.IUserService;
import web.bookStore.service.UserService;

public class Test_user {

	@Test
	public void login() {
		 ApplicationContext applicationContext = new   ClassPathXmlApplicationContext("application-dao.xml","application-service.xml");
		 IUserService iUserService = applicationContext.getBean("userService", UserService.class);
		 System.out.println( iUserService.login("ha", "ha1234"));
	}

}
