package manage.base;

import java.util.List;

import manage.model.Userinfo;
import manage.util.PageInfo;
/**

* @describe： 所有Service都需要继承这个Controller
* @param T: 实体类
*/
public interface BaseService<T> {
	
	
	int deleteByPrimaryKey(String username);

	String insert(T record);

	String insertSelective(T record);

	T selectByPrimaryKey(String username);

	String updateByPrimaryKeySelective(T record);

	String updateByPrimaryKey(T record);

	List<?> selectAll(PageInfo page);
}	

