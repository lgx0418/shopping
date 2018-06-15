package com.shopping.product.service;
/*
 * 商品业务层
 */

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.shopping.product.dao.ProductDao;
import com.shopping.product.vo.Product;
import com.shopping.utils.PageBean;
@Transactional
public class ProductService {
//注入dao层
	private ProductDao productDao;

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	//查询热门商品
	public List<Product> findHot() {
		return productDao.findHot();
	}

	
	//根据商品ID查询
	public Product findByPid(Integer pid) {
		return productDao.findByPid(pid);
	}

	//查询特价商品
	public List<Product> findBargain() {
		return productDao.findBargain();
	}

	//根据一级分类id带分页查询商品信息
	public PageBean<Product> findByPageCid(Integer cid, int page) {
		//需要返回一个pageBean对象，所以先实例化一个
		PageBean<Product> pageBean=new PageBean<Product>();
		//封装当前页数
		pageBean.setPage(page);
		//封装每页显示的记录数
		int limit=12;
		pageBean.setLimit(limit);
		//封装总记录数,需从数据库中读取
		int totalCount=productDao.findCountCid(cid);
		pageBean.setTotalCount(totalCount);
		//封装总页数
		double tp=totalCount;
		Double num=Math.ceil(tp/limit);
		pageBean.setTotalPage(num.intValue());
		//封装每页显示的数据集合
		int begin=(page-1)*limit;
		List<Product> list=productDao.findByPageCid(cid,begin,limit);
		pageBean.setList(list);
		//返回一个pageBean对象
		return pageBean;
	}

	//二级分类商品分页
	public PageBean<Product> findByCsid(Integer csid, int page) {
		PageBean<Product> pageBean=new PageBean<Product>();
		//封装当前页数
		pageBean.setPage(page);
		//封装每页显示的记录数
		int limit=12;
		pageBean.setLimit(limit);
		//封装总记录数
		int totalCount=productDao.findCountCsid(csid);
		pageBean.setTotalCount(totalCount);
		//封装总页数
		double tp=totalCount;
		Double num=Math.ceil(tp/limit);
		pageBean.setTotalPage(num.intValue());
		//封装每页显示的数据集合
		int begin=(page-1)*limit;
		List<Product> list=productDao.findByPageCsid(csid,begin,limit);
		pageBean.setList(list);
		return pageBean;
	}
}
