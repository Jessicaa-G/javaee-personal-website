package jessica.website.bean;
/*
 * 评论实体类
 */
public class Message {
	private int m_id;
	private String username;
	private String m_content;
	private String m_time;
	private String m_reply;
	private String m_reply_time;
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getM_content() {
		return m_content;
	}
	public void setM_content(String m_content) {
		this.m_content = m_content;
	}
	public String getM_time() {
		return m_time;
	}
	public void setM_time(String m_time) {
		this.m_time = m_time;
	}
	public String getM_reply() {
		return m_reply;
	}
	public void setM_reply(String m_reply) {
		this.m_reply = m_reply;
	}
	public String getM_reply_time() {
		return m_reply_time;
	}
	public void setM_reply_time(String m_reply_time) {
		this.m_reply_time = m_reply_time;
	}
}
