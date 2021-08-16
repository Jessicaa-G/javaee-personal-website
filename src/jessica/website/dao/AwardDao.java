package jessica.website.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jessica.website.bean.Award;
import jessica.website.utils.DBUtils;
import jessica.website.utils.StringUtil;

import org.apache.ibatis.session.SqlSession;

public class AwardDao {
//	查询所有荣誉
	public List<Award> getAll(){
		List<Award> awards = new ArrayList<Award>();
		try {
			SqlSession ss=DBUtils.getSession();
			awards = ss.selectList("jessica.website.dao.AwardDao.selectAllAward");
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return awards;
	}
	
//	新增一个荣誉
	public boolean addAward(String name,String title,int year){
		if(name==null || title==null || year<2000)
			return false;
		if(StringUtil.is_Empty(name)||StringUtil.is_Empty(title)){
			return false;
		}
		try {
			SqlSession ss=DBUtils.getSession();
			Award award = new Award();
			award.setAward_name(name);
			award.setAward_titleString(title);
			award.setAward_year(year);
			ss.insert("jessica.website.dao.AwardDao.addAward",award);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

//	删除一个荣誉
	public boolean delAward(String name){
		if(name==null)
			return false;
		if(StringUtil.is_Empty(name))
			return false;
		try {
			SqlSession ss=DBUtils.getSession();
			ss.delete("jessica.website.dao.AwardDao.deleteAward", name);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
//	修改一个荣誉
	public boolean altAward(String name,String title,int year){
		if(name==null || title==null || year<2000)
			return false;
		if(StringUtil.is_Empty(name)||StringUtil.is_Empty(title)){
			return false;
		}
		try {
			SqlSession ss=DBUtils.getSession();
			Award award = new Award();
			award.setAward_name(name);
			award.setAward_titleString(title);
			award.setAward_year(year);
			ss.insert("jessica.website.dao.AwardDao.updateAward",award);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
