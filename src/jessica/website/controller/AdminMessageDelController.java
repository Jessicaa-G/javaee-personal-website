package jessica.website.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jessica.website.dao.MessageDao;
import jessica.website.dao.MessageReplyDao;

/**
 * Servlet implementation class AdminMessageDelController
 * /admin/message/delete
 */
public class AdminMessageDelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMessageDelController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		int id = Integer.parseInt(request.getParameter("id"));
		MessageReplyDao messageReplyDao = new MessageReplyDao();
		boolean is_re_success = messageReplyDao.delReply(id);
		
		MessageDao messageDao = new MessageDao();
		boolean is_success = messageDao.delMessage(id);
//		同时删除该评论的回复
		if (is_success&&is_re_success) {
//		删除成功，返回
			request.setAttribute("alert", "删除成功！");
			request.getRequestDispatcher("/admin/message").forward(request, response);
			return;
		} 
//		删除失败，添加出错信息，返回
		request.setAttribute("alert", "删除失败！");
		request.getRequestDispatcher("/admin/message").forward(request, response);
	}

}
