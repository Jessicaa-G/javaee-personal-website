package jessica.website.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import jessica.website.bean.Custom;
import jessica.website.utils.DBUtils;
import jessica.website.utils.StringUtil;

public class CustomDao {
//	查询所有习俗
	public List<Custom> getAll(){
		List<Custom> customs = new ArrayList<Custom>();
		try {
			SqlSession ss=DBUtils.getSession();
			customs = ss.selectList("jessica.website.dao.CustomDao.selectAllCustom");
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return customs;
	}
	
//	新增一个习俗
	public boolean addCustom(String name,String content,String path){
		if(name==null || content==null)
			return false;
		if(StringUtil.is_Empty(name)||StringUtil.is_Empty(content)){
			return false;
		}
		try {
			SqlSession ss=DBUtils.getSession();
			Custom custom = new Custom();
			custom.setCustom_name(name);
			custom.setCustom_introduction(content);
			custom.setCustom_pic_path(path);
			ss.insert("jessica.website.dao.CustomDao.addCustom",custom);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

//	删除一个习俗
	public boolean delCustom(String name){
		if(name==null)
			return false;
		if(StringUtil.is_Empty(name))
			return false;
		try {
			SqlSession ss=DBUtils.getSession();
			ss.delete("jessica.website.dao.CustomDao.deleteCustom", name);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
//	修改习俗介绍
	public boolean updateCustom(String name,String content){
		if(name==null || content==null)
			return false;
		if(StringUtil.is_Empty(name)||StringUtil.is_Empty(content)){
			return false;
		}
		try {
			SqlSession ss=DBUtils.getSession();
			Custom custom = new Custom();
			custom.setCustom_name(name);
			custom.setCustom_introduction(content);
			ss.insert("jessica.website.dao.CustomDao.updateCustom",custom);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	} 
}
