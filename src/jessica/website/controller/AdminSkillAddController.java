package jessica.website.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jessica.website.dao.SkillDao;;

/**
 * Servlet implementation class AdminSkillAddController
 *  admin/skill/add
 */
public class AdminSkillAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSkillAddController() {
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
		String skillname = request.getParameter("skillname");
		String proficiency = request.getParameter("proficiency");
		SkillDao skillDao = new SkillDao();
		boolean is_success = skillDao.addSkill(skillname, proficiency);
		if (is_success) {
//		��ӳɹ�������admin_skill.jsp
			request.setAttribute("alert", "��ӳɹ���");
			request.getRequestDispatcher("/admin/skill").forward(request, response);
			return;
		} 
//		���ʧ�ܣ���ӳ�����Ϣ������admin_skill.jsp
		request.setAttribute("alert", "���ʧ�ܣ�");
		request.getRequestDispatcher("/admin/skill").forward(request, response);
	}

}
