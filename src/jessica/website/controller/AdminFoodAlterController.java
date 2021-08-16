package jessica.website.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jessica.website.dao.FoodDao;

/**
 * Servlet implementation class AdminFoodAlterController
 * /admin/food/alter
 */
public class AdminFoodAlterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFoodAlterController() {
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
		String foodname = request.getParameter("foodname");
		String content  = request.getParameter("content");
		FoodDao foodDao = new FoodDao();
		boolean is_success = foodDao.updateFood(foodname, content);
		if (is_success) {
//			添加成功
				request.setAttribute("alert", "修改成功！");
				request.getRequestDispatcher("/admin/food").forward(request, response);
				return;
			} 
//			添加失败
			request.setAttribute("alert", "修改失败！");
			request.getRequestDispatcher("/admin/food").forward(request, response);
	}

}
