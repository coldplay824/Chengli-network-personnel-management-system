package manage.base;

import java.util.List;

import manage.util.PageInfo;
/**

* @describe： 所有Mapper.java都需要继承这个Controller
* @param T: 实体类
*/
public interface BaseMapper<T> {

	int deleteByPrimaryKey(String username);

	int insert(T record);

	int insertSelective(T record);

	T selectByPrimaryKey(String username);

	int updateByPrimaryKeySelective(T record);

	int updateByPrimaryKey(T record);

	// List<?> selectAllListPage(String depNumber,PageInfo page);
	List<?> selectAllListPage(PageInfo page);
}
