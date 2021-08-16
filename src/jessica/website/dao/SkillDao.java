package jessica.website.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jessica.website.bean.Skill;
import jessica.website.utils.DBUtils;
import jessica.website.utils.StringUtil;

import org.apache.ibatis.session.SqlSession;

public class SkillDao {
//	查询所有技能
	public List<Skill> getAll(){
		List<Skill> skills = new ArrayList<Skill>();
		try {
			SqlSession ss=DBUtils.getSession();
			skills = ss.selectList("jessica.website.dao.SkillDao.selectAllSkill");
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return skills;
	}
	
//	新增一个技能
	public boolean addSkill(String name,String content){
		if(name==null || content==null)
			return false;
		if(StringUtil.is_Empty(name)||StringUtil.is_Empty(content)){
			return false;
		}
		try {
			SqlSession ss=DBUtils.getSession();
			Skill skill = new Skill();
			skill.setSkill_name(name);
			skill.setSkill_proficiency(content);
			ss.insert("jessica.website.dao.SkillDao.addSkill",skill);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

//	删除一个技能
	public boolean delSkill(String name){
		if(name==null)
			return false;
		if(StringUtil.is_Empty(name))
			return false;
		try {
			SqlSession ss=DBUtils.getSession();
			ss.delete("jessica.website.dao.SkillDao.deleteSkill", name);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
//	修改技能
	public boolean alterSkill(String name,String content){
		if(name==null || content==null)
			return false;
		if(StringUtil.is_Empty(name)||StringUtil.is_Empty(content)){
			return false;
		}
		try {
			SqlSession ss=DBUtils.getSession();
			Skill skill = new Skill();
			skill.setSkill_name(name);
			skill.setSkill_proficiency(content);
			ss.insert("jessica.website.dao.SkillDao.updateSkill",skill);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
