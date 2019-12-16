package com.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.*;

import com.entity.News;
import com.service.NewsService;
import com.service.ServiceFactory;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NewsService newsService = ServiceFactory.getNewsService();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
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
		// TODO Auto-generated method stub
		// 基于请求参数，封装为user对象，调用UserService更新
		int id = Integer.parseInt(request.getParameter("nid"));
		String title = request.getParameter("ntitle");
		String content = request.getParameter("ncontent");
		String time=request.getParameter("ntime");
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		Date insertTime=new Date();
		try{
			insertTime=sf.parse(time);
		}
		catch (ParseException e){
			e.printStackTrace();
		}
		News news = new News();
		news.setId(id);
		news.setTitle(title);
		news.setContent(content);
		news.setInsertTime(insertTime);
		newsService.updateNews(news);
		response.sendRedirect(request.getContextPath() + "/ListServlet");
	}

}
