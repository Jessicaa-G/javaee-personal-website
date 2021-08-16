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
 * get方法查询所有用户后转发至admin_user.jsp
 * post方法增加一个用户
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
//		添加成功，返回admin_user.jsp
			request.setAttribute("alert", "添加成功！");
			doGet(request, response);
			return;
		} 
//		添加失败，添加出错信息，返回admin_user.jsp
		request.setAttribute("alert", "添加失败！");
		doGet(request, response);
	}

}
