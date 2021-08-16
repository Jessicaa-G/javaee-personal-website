package jessica.website.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import jessica.website.bean.User;
import jessica.website.utils.DBUtils;
import jessica.website.utils.StringUtil;

public class UserDao {
	
//	�ж��û����������Ƿ�һ��
	public boolean isValid(String username,String password){
		boolean valid = false;
		try {
			SqlSession ss=DBUtils.getSession();
			User user = ss.selectOne("jessica.website.dao.UserDao.selectUserByName",username);
			if(user!=null){
				if(user.getPassword().equals(password))
					valid = true;
			}
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return valid;
	}
	
//	��ѯusername�Ƿ����
	public boolean isExist(String username){
		try {
			SqlSession ss=DBUtils.getSession();
			User user = ss.selectOne("jessica.website.dao.UserDao.selectUserByName",username);
			if(user==null){
				return false;
			}
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return true;
	}

//	��ѯ����user
	public List<User> getAll(){
		List<User> users = new ArrayList<User>();
		try {
			SqlSession ss=DBUtils.getSession();
			users = ss.selectList("jessica.website.dao.UserDao.selectAllUser");
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return users;
	}
	
//	����һ��user
	public boolean addUser(String username,String password){
		if(username==null || password==null)
			return false;
		if(StringUtil.is_Empty(username)||StringUtil.is_Empty(password)){
			return false;
		}
		try {
			SqlSession ss=DBUtils.getSession();
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			ss.insert("jessica.website.dao.UserDao.addUser",user);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

//	ɾ��һ��user
	public boolean delUser(String username){
		if(username==null)
			return false;
		if(StringUtil.is_Empty(username))
			return false;
		try {
			SqlSession ss=DBUtils.getSession();
			ss.delete("jessica.website.dao.UserDao.deleteUser", username);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
//	�޸�
	public boolean alterUser(String username,String password){
		if(username==null || password==null)
			return false;
		if(StringUtil.is_Empty(username)||StringUtil.is_Empty(password)){
			return false;
		}
		try {
			SqlSession ss=DBUtils.getSession();
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			ss.update("jessica.website.dao.UserDao.updateUser",user);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
