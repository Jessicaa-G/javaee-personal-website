package jessica.website.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jessica.website.bean.Message;
import jessica.website.bean.MessageReply;
import jessica.website.dao.MessageDao;
import jessica.website.dao.MessageReplyDao;

/**
 * Servlet implementation class MessageController
 * /index
 */
public class MessageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MessageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		MessageDao messageDao = new MessageDao();
		List<Message> messages = messageDao.getAll();
		request.setAttribute("messages", messages);
		MessageReplyDao messageReplyDao = new MessageReplyDao();
		List<MessageReply> replys = new ArrayList <MessageReply>();
		//按顺序查找回复
		MessageReply re = new MessageReply();
		for(Message m:messages){
			re = messageReplyDao.selectReplyById(m.getM_id());
			if(re==null){
				re = new MessageReply();
				re.setM_id(m.getM_id());
				re.setMre_content(" ");
				re.setMre_time(" ");
				re.setMre_id(0);
			}
			replys.add(re);
		}
		request.setAttribute("replys", replys);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		HttpSession s = request.getSession();
		String username = (String)s.getAttribute("username");
		String content = request.getParameter("msgcontent");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String time = df.format(new Date());
		MessageDao messageDao = new MessageDao();
		boolean is_success = messageDao.addMessage(username, content, time);
		if (is_success) {
//		添加成功
			request.setAttribute("alert", "添加成功！");
			doGet(request, response);
			return;
		} 
		request.setAttribute("alert", "添加失败！");
		doGet(request, response);
		return;
	}

}
