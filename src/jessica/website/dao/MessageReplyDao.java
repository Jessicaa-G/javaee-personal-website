package jessica.website.dao;

import java.io.IOException;

import jessica.website.bean.MessageReply;
import jessica.website.utils.DBUtils;
import jessica.website.utils.StringUtil;

import org.apache.ibatis.session.SqlSession;

public class MessageReplyDao {

//按m_id查找回复
	public MessageReply selectReplyById(int id){
		MessageReply reply = new MessageReply();
		try {
			SqlSession ss=DBUtils.getSession();
			reply = ss.selectOne("jessica.website.dao.MessageReplyDao.selectReplyById", id);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return reply;
	}

//	新增一个回复
	public boolean addReply(int m_id,String mre_content,String mre_time){
		if(mre_content==null)
			return false;
		if(StringUtil.is_Empty(mre_content)){
			return false;
		}
		try {
			SqlSession ss=DBUtils.getSession();
			MessageReply re = new MessageReply();
			re.setM_id(m_id);
			re.setMre_content(mre_content);
			re.setMre_time(mre_time);
			ss.insert("jessica.website.dao.MessageReplyDao.addReply",re);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

//	删除一个回复
	public boolean delReply(int id){
		try {
			SqlSession ss=DBUtils.getSession();
			ss.delete("jessica.website.dao.MessageReplyDao.deleteReply", id);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

//修改一个回复
	public boolean updateReply(int id,String reply,String time) {
		try {
			SqlSession ss=DBUtils.getSession();
			MessageReply re = new MessageReply();
			re.setM_id(id);
			re.setMre_content(reply);
			re.setMre_time(time);
			ss.update("jessica.website.dao.MessageReplyDao.updateReply", re);
			ss.commit();
			ss.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
