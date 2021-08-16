package jessica.website.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import jessica.website.bean.User;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DBUtils {
	public static SqlSessionFactory getSqlSessionFactory() throws IOException {
		InputStream config = Resources.getResourceAsStream("jessica/website/utils/mybatis-config.xml");
		SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(config);
		return ssf;
	}
	
	public static SqlSession getSession() throws IOException {
		return DBUtils.getSqlSessionFactory().openSession();
	}

}
