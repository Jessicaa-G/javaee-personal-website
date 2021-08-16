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
import jessica.website.dao.AwardDao;
import jessica.website.dao.CustomDao;
import jessica.website.dao.FoodDao;
import jessica.website.dao.SkillDao;

/**
 * Servlet implementation class HometownIntroController
 * /hometownintro
 */
public class HometownIntroController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HometownIntroController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		//ÃÀÊ³
		FoodDao foodDao = new FoodDao();
		List<Food> foods = foodDao.getAll();
		request.setAttribute("foods", foods);
		//Ï°Ë×
		CustomDao customDao = new CustomDao();
		List<Custom> customs = customDao.getAll();
		request.setAttribute("customs", customs);
		request.getRequestDispatcher("/hometownintro.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
