package jessica.website.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jessica.website.bean.Award;
import jessica.website.bean.Skill;
import jessica.website.dao.AwardDao;
import jessica.website.dao.SkillDao;

/**
 * Servlet implementation class SelfIntro
 * /selfintro
 */
public class SelfIntroController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelfIntroController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		//¼¼ÄÜ
		SkillDao skillDao = new SkillDao();
		List<Skill> skills = skillDao.getAll();
		request.setAttribute("skills", skills);
		//ÈÙÓþ
		AwardDao awardDao = new AwardDao();
		List<Award>  awards = awardDao.getAll();
		request.setAttribute("awards",  awards);
		
		request.getRequestDispatcher("/selfintro.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
