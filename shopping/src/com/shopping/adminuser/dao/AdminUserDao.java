package com.shopping.adminuser.dao;
import java.util.List;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import com.shopping.adminuser.vo.AdminUser;
public class AdminUserDao extends HibernateDaoSupport{

	// Dao完成登录的代码
	public AdminUser login(AdminUser adminUser) {
		String hql = "from AdminUser where username = ? and password = ?";
		List<AdminUser> list = (List<AdminUser>) this.getHibernateTemplate().find(hql, adminUser.getUsername(),adminUser.getPassword());
		if(list != null && list.size()>0){
			return list.get(0);
		}
		return null;
	}

}
