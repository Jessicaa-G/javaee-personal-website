package jessica.website.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jessica.website.dao.FoodDao;

/**
 * Servlet implementation class AdminHometownFoodDelController
 *  admin/food/delete
 */
public class AdminFoodDelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFoodDelController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String foodname = request.getParameter("foodname");
		FoodDao foodDao = new FoodDao();
		boolean is_success = foodDao.delFood(foodname);
		if (is_success) {
//		ɾ���ɹ�������admin_food.jsp
			request.setAttribute("alert", "ɾ���ɹ���");
			request.getRequestDispatcher("/admin/food").forward(request, response);
			return;
		} 
//		ɾ��ʧ�ܣ���ӳ�����Ϣ������admin_food.jsp
		request.setAttribute("alert", "ɾ��ʧ�ܣ�");
		request.getRequestDispatcher("/admin/food").forward(request, response);
	}
}
