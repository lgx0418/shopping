package com.shopping.product.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.shopping.product.dao.ProductDao;
import com.shopping.product.vo.Product;
import com.shopping.utils.PageBean;
@Transactional
public class ProductService {
	// 注入ProductDao
	private ProductDao productDao;
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	public PageBean<Product> findByPage(Integer page) {
		PageBean<Product> pageBean=new PageBean<Product>();
		//设置当前的页数
		pageBean.setPage(page);
		//设置每页显示的记录数
		int limit=10;
		pageBean.setLimit(limit);
		//设置总的记录数
		int totalCount=productDao.findCount();
		pageBean.setTotalCount(totalCount);
		//设置总的页数
		int totalPage=0;
		if(totalCount % limit ==0){
			totalPage=totalCount / limit;
		}else{
			totalPage=totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		//设置显示到页面的数据的集合
		int begin=(page-1)*limit;
		List<Product> list=productDao.findByPage(begin,limit);
		pageBean.setList(list);
		return pageBean;
		
	}

}
