package jessica.website.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import jessica.website.bean.Food;
import jessica.website.utils.DBUtils;
import jessica.website.utils.StringUtil;

public class FoodDao {

//	查询所有美食
	public List<Food> getAll(){
		List<Food> foods = new ArrayList<Food>();
		try {
			SqlSession ss=DBUtils.getSession();
			foods = ss.selectList("jessica.website.dao.FoodDao.selectAllFood");
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return foods;
	}
	
//	新增一个美食
	public boolean addFood(String name,String content,String path){
		if(name==null || content==null)
			return false;
		if(StringUtil.is_Empty(name)||StringUtil.is_Empty(content)){
			return false;
		}
		try {
			SqlSession ss=DBUtils.getSession();
			Food food = new Food();
			food.setFood_name(name);
			food.setFood_content(content);
			food.setFood_pic_path(path);
			ss.insert("jessica.website.dao.FoodDao.addFood",food);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

//	删除一个美食
	public boolean delFood(String name){
		if(name==null)
			return false;
		if(StringUtil.is_Empty(name))
			return false;
		try {
			SqlSession ss=DBUtils.getSession();
			ss.delete("jessica.website.dao.FoodDao.deleteFood", name);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
//	修改一个美食介绍
	public boolean updateFood(String name,String content){
		if(name==null || content==null)
			return false;
		if(StringUtil.is_Empty(name)||StringUtil.is_Empty(content)){
			return false;
		}
		try {
			SqlSession ss=DBUtils.getSession();
			Food food = new Food();
			food.setFood_name(name);
			food.setFood_content(content);
			ss.insert("jessica.website.dao.FoodDao.updateFood",food);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
