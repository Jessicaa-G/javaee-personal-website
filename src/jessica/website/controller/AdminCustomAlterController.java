package jessica.website.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jessica.website.dao.CustomDao;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

/**
 * Servlet implementation class AdminCustomAlterController
 * /admin/custom/alter
 */
public class AdminCustomAlterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCustomAlterController() {
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
		String introduction  = request.getParameter("introduction");
		CustomDao customDao = new CustomDao();
		boolean is_success = customDao.updateCustom(customname, introduction);
		if (is_success) {
//		添加成功，返回admin_cutom.jsp
			request.setAttribute("alert", "修改成功！");
			request.getRequestDispatcher("/admin/custom").forward(request, response);
			return;
		} 
//		添加失败，添加出错信息，返回admin_custom.jsp
		request.setAttribute("alert", "修改失败！");
		request.getRequestDispatcher("/admin/custom").forward(request, response);
	}

}
