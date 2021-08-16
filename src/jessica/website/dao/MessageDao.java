package jessica.website.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jessica.website.bean.Message;
import jessica.website.utils.DBUtils;
import jessica.website.utils.StringUtil;

import org.apache.ibatis.session.SqlSession;

public class MessageDao {

//	查询所有留言
	public List<Message> getAll(){
		List<Message> msgs = new ArrayList<Message>();
		try {
			SqlSession ss=DBUtils.getSession();
			msgs = ss.selectList("jessica.website.dao.MessageDao.selectAllMessage");
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return msgs;
	}
	
//	新增一个留言
	public boolean addMessage(String username,String content,String time){
		if(username==null || content==null)
			return false;
		if(StringUtil.is_Empty(username)||StringUtil.is_Empty(content)){
			return false;
		}
		try {
			SqlSession ss=DBUtils.getSession();
			Message msg = new Message();
			msg.setUsername(username);
			msg.setM_content(content);
			msg.setM_time(time);
			ss.insert("jessica.website.dao.MessageDao.addMessage",msg);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

//	删除一个留言
	public boolean delMessage(int id){
		try {
			SqlSession ss=DBUtils.getSession();
			ss.delete("jessica.website.dao.MessageDao.deleteMessage", id);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
