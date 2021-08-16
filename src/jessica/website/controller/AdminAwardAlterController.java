package jessica.website.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jessica.website.dao.AwardDao;

/**
 * Servlet implementation class AdminAwardAlterController
 * /admin/award/alter
 */
public class AdminAwardAlterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAwardAlterController() {
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
		String awardname = request.getParameter("awardname");
		String title = request.getParameter("title");
		String yearstr = request.getParameter("year");
		int year;
		if(jessica.website.utils.StringUtil.is_Empty(yearstr))
			year=0;
		else
			year = Integer.parseInt(yearstr);
		AwardDao awardDao = new AwardDao();
		boolean is_success = awardDao.altAward(awardname, title,year);
		if (is_success) {
//		添加成功，返回admin_award.jsp
			request.setAttribute("alert", "修改成功！");
			request.getRequestDispatcher("/admin/award").forward(request, response);
			return;
		} 
//		添加失败，添加出错信息，返回admin_award.jsp
		request.setAttribute("alert", "修改失败！");
		request.getRequestDispatcher("/admin/award").forward(request, response);
	}

}
