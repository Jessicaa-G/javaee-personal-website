package jessica.website.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jessica.website.dao.UserDao;

/**
 * Servlet implementation class RegisterController
 * /register
 */
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
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
		String password = request.getParameter("password");
		
		UserDao userDao = new UserDao();
		boolean exist = userDao.isExist(username);
		if (exist) {
			request.setAttribute("error", "用户名已存在！");
			request.getRequestDispatcher("register.jsp").forward(request, response);
			return;
		} 
		boolean is_success = userDao.addUser(username, password);
		if (is_success) {
			request.setAttribute("error", "注册成功，请重新登陆！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		} 
		request.setAttribute("error", "注册失败！");
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

}
