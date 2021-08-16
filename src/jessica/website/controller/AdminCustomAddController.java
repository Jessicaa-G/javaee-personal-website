package jessica.website.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

import jessica.website.dao.CustomDao;

/**
 * Servlet implementation class AdminCustomAddController
 * admin/custom/add
 */
public class AdminCustomAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCustomAddController() {
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
		String customname = new String();
		String introduction = new String();
		try { 
			su.setCharset("UTF-8");
			su.initialize(this, request,response);
			su.upload();
			Files files = su.getFiles();
			File file = files.getFile(0);
			String filename = file.getFileName();
			//��ȡ�ļ���׺
			String houzhui = filename.substring(filename.indexOf("."));
			
			customname = su.getRequest().getParameter("customname");
			introduction = su.getRequest().getParameter("introduction");
			
			path = "/upload/custom/"+customname + houzhui;
			//��ϰ���������ļ�
			file.saveAs("/usr/apache-tomcat-8.5.61/webapps"+path);
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
		CustomDao customDao = new CustomDao();
		boolean is_success = customDao.addCustom(customname, introduction,path);
		if (is_success) {
//		��ӳɹ�������admin_cutom.jsp
			request.setAttribute("alert", "��ӳɹ���");
			request.getRequestDispatcher("/admin/custom").forward(request, response);
			return;
		} 
//		���ʧ�ܣ���ӳ�����Ϣ������admin_custom.jsp
		request.setAttribute("alert", "���ʧ�ܣ�");
		request.getRequestDispatcher("/admin/custom").forward(request, response);
	}

}
