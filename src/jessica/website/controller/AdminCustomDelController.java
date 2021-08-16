package jessica.website.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jessica.website.dao.CustomDao;;

/**
 * Servlet implementation class AdminCustomDelController
 * admin/custom/delete
 */
public class AdminCustomDelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCustomDelController() {
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
		String customname = request.getParameter("customname");
		CustomDao customDao = new CustomDao();
		boolean is_success = customDao.delCustom(customname);
		if (is_success) {
//		ɾ���ɹ�������admin_custom.jsp
			request.setAttribute("alert", "ɾ���ɹ���");
			request.getRequestDispatcher("/admin/custom").forward(request, response);
			return;
		} 
//		ɾ��ʧ�ܣ���ӳ�����Ϣ������admin_custom.jsp
		request.setAttribute("alert", "ɾ��ʧ�ܣ�");
		request.getRequestDispatcher("/admin/custom").forward(request, response);
	}

}
