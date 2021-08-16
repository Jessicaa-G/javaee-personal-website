package jessica.website.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jessica.website.dao.UserDao;

/**
 * Servlet implementation class AdminUserDelController
 * ɾ���û�
 */
public class AdminUserDelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminUserDelController() {
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
		String username = request.getParameter("username");

		UserDao userDao = new UserDao();
		boolean is_success = userDao.delUser(username);
		if (is_success) {
//		ɾ���ɹ�������admin_user.jsp
//		*����Ϊ�ض�������ת���򷽷����䣬����post
			response.sendRedirect("/MyWebsite/admin/user?del=success");
			return;
		} 
//		ɾ��ʧ�ܣ���ӳ�����Ϣ������admin_user.jsp
		response.sendRedirect("/MyWebsite/admin/user?del=fail");
	}
}
