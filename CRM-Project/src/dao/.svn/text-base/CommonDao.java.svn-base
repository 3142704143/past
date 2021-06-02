package dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class CommonDao {
	private HibernateTemplate temp;
	public void setTemp(HibernateTemplate temp) {//给spring注入
		this.temp = temp;
	}
	
	
	public Serializable save(Object entity){
		return temp.save(entity);
	}
	
	public void update(Object entity){
		temp.update(entity);
	}
	
	public void delete(Object entity){
		temp.delete(entity);
	}
	
	public Object get(Class clazz,Serializable id){
		return temp.get(clazz, id);
	}
	
	public List list(Class clazz){
		return temp.loadAll(clazz);
	}
	
	public List list(String hql,Object... params){
		return temp.find(hql, params);
	}
	
	public List list(String hql,List<Object> params){
		Session session = temp.getSessionFactory().getCurrentSession();
		Query q = session.createQuery(hql);
		if (params!=null) {
			for (int i = 0; i < params.size(); i++) {
				q.setParameter(i, params.get(i));
			}
		}
		return q.list();
	}
	
	public List listSQL(String sql,List<Object> params){
		Session session = temp.getSessionFactory().getCurrentSession();
		Query q = session.createSQLQuery(sql);
		if (params!=null) {
			for (int i = 0; i < params.size(); i++) {
				q.setParameter(i, params.get(i));
			}
		}
		return q.list();
	}
	
	public List queryPage(int cpage,int count,String hql,Object... params){
		if (cpage<=0 || count<=0 || hql==null || hql.equals("")) {
			return null;
		}
		Session session = temp.getSessionFactory().getCurrentSession();
		Query q = session.createQuery(hql);
		for (int i = 0; i < params.length; i++) {
			q.setParameter(i, params[i]);
		}
		q.setFirstResult((cpage-1)*count);
		q.setMaxResults(count);
		return q.list();
	}
	
	public List queryPage(int cpage,int count,String hql,List<Object> params){
		if (cpage<=0 || count<=0 || hql==null || hql.equals("")) {
			return null;
		}
		Session session = temp.getSessionFactory().getCurrentSession();
		Query q = session.createQuery(hql);
		if (params!=null) {
			for (int i = 0; i < params.size(); i++) {
				q.setParameter(i, params.get(i));
			}
		}
		q.setFirstResult((cpage-1)*count);
		q.setMaxResults(count);
		return q.list();
	}
}












