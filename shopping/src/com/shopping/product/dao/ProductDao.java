package com.shopping.product.dao;

import java.util.List;

import org.springframework.dao.support.DaoSupport;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.shopping.product.vo.Product;
import com.shopping.utils.PageHibernateCallback;

public class ProductDao extends HibernateDaoSupport{
	//DAO层统计商品个数的方法
	public int findCount() {
		String hql="select count(*) from Product";
		List<Long> list= (List<Long>) this.getHibernateTemplate().find(hql);
		if(list !=null && list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}
	//带分页查询商品的方法
	public List<Product> findByPage(int begin, int limit) {
		String hql="from Product order by pdate desc";
		List <Product> list=this .getHibernateTemplate().execute(new PageHibernateCallback<Product>(hql, null, begin, limit));
		if(list !=null && list.size()>0){
			return list;
		}
		return null;
	}
}
