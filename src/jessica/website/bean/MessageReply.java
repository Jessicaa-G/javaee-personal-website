package jessica.website.bean;
/*
 * 评论回复实体类
 */
public class MessageReply {
	private int mre_id;
	private int m_id;
	private String mre_content;
	private String mre_time;
	public int getMre_id() {
		return mre_id;
	}
	public void setMre_id(int mre_id) {
		this.mre_id = mre_id;
	}
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public String getMre_content() {
		return mre_content;
	}
	public void setMre_content(String mre_content) {
		this.mre_content = mre_content;
	}
	public String getMre_time() {
		return mre_time;
	}
	public void setMre_time(String mre_time) {
		this.mre_time = mre_time;
	}
	
}
