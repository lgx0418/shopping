package com.shopping.product.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.shopping.product.vo.Product;

/*
 * 商品持久层
 */
public class ProductDao extends HibernateDaoSupport{

	//查询热门商品
	public List<Product> findHot() {
		//使用离线条件查询
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		//查询热门商品，条件是is_hot=1
		criteria.add(Restrictions.eq("is_hot", 1));
		//按照pid倒序输出
		criteria.addOrder(Order.desc("pid"));
		//执行查询
		List<Product> list=(List<Product>) this.getHibernateTemplate().findByCriteria(criteria, 0, 10);
		return list;
	}

	//根据商品ID查询
	public Product findByPid(Integer pid) {
		
		return this.getHibernateTemplate().get(Product.class, pid);
	}

	//查询特价商品
	public List<Product> findBargain() {
		//多条件查询，使用离线查询
		DetachedCriteria criteria=DetachedCriteria.forClass(Product.class);
		//查询特价商品，按折后价格升序输出
		criteria.addOrder(Order.asc("shop_price"));
		//执行查询
		List<Product> list=(List<Product>) this.getHibernateTemplate().findByCriteria(criteria, 0, 5);
		return list;
	}

	//查询一级分类的总记录数
	public int findCountCid(Integer cid) {
		String hql="select count(*) from Product p where p.categorySecond.category.cid=?";
		List<Long> list=(List<Long>) this.getHibernateTemplate().find(hql, cid);
		if(list !=null && list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}
	
	public List<Product> findByPageCid(Integer cid, int page, int limit) {
		return null;
	}


}
