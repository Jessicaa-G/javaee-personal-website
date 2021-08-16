package jessica.website.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jessica.website.bean.User;
import jessica.website.dao.UserDao;

/**
 * Servlet implementation class AdminUserController
 * admin/user
 * get������ѯ�����û���ת����admin_user.jsp
 * post��������һ���û�
 */
public class AdminUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		UserDao userDao = new UserDao();
		List<User> users = userDao.getAll();
		request.setAttribute("users", users);
		request.getRequestDispatcher("/admin_user.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		UserDao userDao = new UserDao();
		boolean is_success = userDao.addUser(username, password);
		if (is_success) {
//		��ӳɹ�������admin_user.jsp
			request.setAttribute("alert", "��ӳɹ���");
			doGet(request, response);
			return;
		} 
//		���ʧ�ܣ���ӳ�����Ϣ������admin_user.jsp
		request.setAttribute("alert", "���ʧ�ܣ�");
		doGet(request, response);
	}

}
