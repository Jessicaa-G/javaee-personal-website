package jessica.website.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jessica.website.bean.Message;
import jessica.website.bean.MessageReply;
import jessica.website.dao.MessageDao;
import jessica.website.dao.MessageReplyDao;

/**
 * Servlet implementation class AdminMessageController
 * /admin/message
 */
public class AdminMessageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMessageController() {
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
		//∞¥À≥–Ú≤È’“ªÿ∏¥
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
		request.getRequestDispatcher("/admin_message.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
