package manage.util;
/**
 工具类
*/
public class BiSheUtil {
	//判断是否为空
	public static Boolean notNull(String str) {
		if (str == "" || str.isEmpty() || str.equals("undefined") || str == null  ) {
			return false;
		} else {
			return true;
		}
	}

}
