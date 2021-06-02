package com.mox.base;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;

import tk.mybatis.mapper.common.Mapper;

public class BaseServiceImpl<M extends Mapper<T>,T> implements BaseService<T> {

	@Autowired
	protected M m;
	
	public T selectOne(T record) {
		return m.selectOne(record);
	}
	
	public List<T> selectAll() {
		return m.selectAll();
	}
	 
	public List<T> select(T record) {
		return m.select(record);
	}

	 
	 
	public int selectCount(T record) {
		return m.selectCount(record);
	}

	 
	 
	public T selectByPrimaryKey(Object key) {
		return m.selectByPrimaryKey(key);
	}

	 
	 
	public boolean existsWithPrimaryKey(Object key) {
		return m.existsWithPrimaryKey(key);
	}

	 
	 
	public int insert(T record) {
		return m.insert(record);
	}

	 
	 
	public int insertSelective(T record) {
		return m.insertSelective(record);
	}

	 
	 
	public int updateByPrimaryKey(T record) {
		return m.updateByPrimaryKey(record);
	}

	 
	 
	public int updateByPrimaryKeySelective(T record) {
		return m.updateByPrimaryKeySelective(record);
	}

	 
	 
	public int delete(T record) {
		return m.delete(record);
	}

	 
	 
	public int deleteByPrimaryKey(Object key) {
		return m.deleteByPrimaryKey(key);
	}

	 
	 
	public List<T> selectByExample(Object example) {
		return m.selectByExample(example);
	}

	 
	 
	public T selectOneByExample(Object example) {
		return m.selectOneByExample(example);
	}

	 
	 
	public int selectCountByExample(Object example) {
		return m.selectCountByExample(example);
	}

	 
	 
	public int deleteByExample(Object example) {
		return m.deleteByExample(example);
	}

	 
	 
	public int updateByExample(T record, Object example) {
		return m.updateByExample(record, example);
	}

	 
	 
	public int updateByExampleSelective(T record, Object example) {
		return m.updateByExampleSelective(record, example);
	}

	 
	 
	public List<T> selectByExampleAndRowBounds(Object example, RowBounds rowBounds) {
		return m.selectByExampleAndRowBounds(example, rowBounds);
	}

	 
	 
	public List<T> selectByRowBounds(T record, RowBounds rowBounds) {
		return m.selectByRowBounds(record, rowBounds);
	}

}
