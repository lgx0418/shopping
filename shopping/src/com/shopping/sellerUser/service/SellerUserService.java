package com.shopping.sellerUser.service;

import org.springframework.transaction.annotation.Transactional;

import com.shopping.sellerUser.dao.SellerUserDao;
import com.shopping.sellerUser.vo.SellerUser;
import com.shopping.utils.MailUtils;
import com.shopping.utils.UUIDUtils;

/*
 * 商户业务层
 */
@Transactional
public class SellerUserService {
	//注入dao层
	private SellerUserDao sellerUserDao;

	public void setSellerUserDao(SellerUserDao sellerUserDao) {
		this.sellerUserDao = sellerUserDao;
	}
	//ajax异步校验
		public SellerUser findBySellername(String susername) {
			return sellerUserDao.findBySellername(susername);
		}
		//ajax异步校验
		public SellerUser findBySshopName(String sshopName) {
			return sellerUserDao.findBySshopName(sshopName);
		}
	//保存注册商户
	public void save(SellerUser sellerUser) {
		sellerUser.setSstate(0);
		String scode=UUIDUtils.getUUID()+UUIDUtils.getUUID();
		sellerUser.setScode(scode);
		sellerUserDao.save(sellerUser);
		//发送激活邮件
		try {
			MailUtils.sendEmailSeller(sellerUser.getSemail(), scode);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	//激活商户
	public SellerUser findBySellerCode(String scode) {
		return sellerUserDao.findBySellerCode(scode);
	}
	//更新激活的商户
	public void update(SellerUser existSellerUser){
		sellerUserDao.update(existSellerUser);
	}
	//商户登录
	public SellerUser login(SellerUser sellerUser) {
		 return sellerUserDao.login(sellerUser);
	}

}
