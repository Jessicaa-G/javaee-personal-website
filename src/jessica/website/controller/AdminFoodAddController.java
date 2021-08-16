package jessica.website.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

import jessica.website.dao.FoodDao;



/**
 * Servlet implementation class AdminHometownFoodAddController
 *  admin/food/add
 */
public class AdminFoodAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFoodAddController() {
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
		SmartUpload su = new SmartUpload();
		String path = new String();
		String foodname = new String();
		String content = new String();
		try { 
			su.setCharset("UTF-8");
			su.initialize(this, request,response);
			su.upload();
			Files files = su.getFiles();
			File file = files.getFile(0);
			String filename = file.getFileName();
			//截取文件后缀
			String houzhui = filename.substring(filename.indexOf("."));
			
			foodname = su.getRequest().getParameter("foodname");
			content = su.getRequest().getParameter("content");
			
			path = "/upload/food/"+foodname + houzhui;
			//以食物名保存文件
			file.saveAs("/usr/apache-tomcat-8.5.61/webapps"+path);
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
		FoodDao foodDao = new FoodDao();
		boolean is_success = foodDao.addFood(foodname, content,path);
		if (is_success) {
//		添加成功，返回admin_food.jsp
			request.setAttribute("alert", "添加成功！");
			request.getRequestDispatcher("/admin/food").forward(request, response);
			return;
		} 
//		添加失败，添加出错信息，返回admin_food.jsp
		request.setAttribute("alert", "添加失败！");
		request.getRequestDispatcher("/admin/food").forward(request, response);
	}
}
