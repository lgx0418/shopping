package com.shopping.sellerUser.dao;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.shopping.sellerUser.vo.SellerUser;

/*
 * 商户持久层
 */
public class SellerUserDao extends HibernateDaoSupport{
	//ajax异步校验
		public SellerUser findBySellername(String susername) {
			String hql="from SellerUser where susername = ?";
			List<SellerUser> list=(List<SellerUser>) this.getHibernateTemplate().find(hql, susername);
			if(list != null && list.size()>0){
				return list.get(0);
			}
			return null;
		}
		//ajax异步校验
		public SellerUser findBySshopName(String sshopName) {
			String hql="from SellerUser where sshopName = ?";
			List<SellerUser> list=(List<SellerUser>) this.getHibernateTemplate().find(hql, sshopName);
			if(list != null && list.size()>0){
				return list.get(0);
			}
				return null;
		}
	//保存注册商户
	public void save(SellerUser sellerUser) {
		this.getHibernateTemplate().save(sellerUser);
	}

	//根据激活码查询商户
	public SellerUser findBySellerCode(String scode) {
		String hql="from SellerUser where scode = ?";
		List<SellerUser> list=(List<SellerUser>) this.getHibernateTemplate().find(hql, scode);
		if(list != null&& list.size()>0){
			return list.get(0);
		}
		return null;
	}

	//更新激活的用户
	public void update(SellerUser existSellerUser){
		this.getHibernateTemplate().update(existSellerUser);
	}
	//商户登录
	public SellerUser login(SellerUser sellerUser) {
		String hql="from SellerUser where susername = ? and spass = ? and sstate = ?";
		List<SellerUser> list=(List<SellerUser>) this.getHibernateTemplate().find(hql, sellerUser.getSusername(),sellerUser.getSpass(),1);
		if(list != null && list.size()>0){
			return list.get(0);
		}
		return null;
	}

	
}
