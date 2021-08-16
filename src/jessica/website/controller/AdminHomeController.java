package jessica.website.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jessica.website.bean.Award;
import jessica.website.bean.Custom;
import jessica.website.bean.Food;
import jessica.website.bean.Skill;
import jessica.website.bean.User;
import jessica.website.bean.Message;
import jessica.website.dao.AwardDao;
import jessica.website.dao.CustomDao;
import jessica.website.dao.FoodDao;
import jessica.website.dao.SkillDao;
import jessica.website.dao.UserDao;
import jessica.website.dao.MessageDao;

/**
 * Servlet implementation class AdminHomeController
 * /admin/home
 */
public class AdminHomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminHomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		//用户
		UserDao userDao = new UserDao();
		List<User> users = userDao.getAll();
		request.setAttribute("users", users);
		//美食
		FoodDao foodDao = new FoodDao();
		List<Food> foods = foodDao.getAll();
		request.setAttribute("foods", foods);
		//习俗
		CustomDao customDao = new CustomDao();
		List<Custom> customs = customDao.getAll();
		request.setAttribute("customs", customs);
		//技能
		SkillDao skillDao = new SkillDao();
		List<Skill> skills = skillDao.getAll();
		request.setAttribute("skills", skills);
		//荣誉
		AwardDao awardDao = new AwardDao();
		List<Award>  awards = awardDao.getAll();
		request.setAttribute("awards",  awards);
		//评论
		MessageDao messageDao = new MessageDao();
		List<Message>  messages = messageDao.getAll();
		request.setAttribute("messages",  messages);
		request.getRequestDispatcher("/admin.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
