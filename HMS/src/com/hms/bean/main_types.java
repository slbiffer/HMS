package com.hms.bean;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class main_types
 */
@WebServlet("/main_types")
public class main_types extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public main_types() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    private String mainName, mainAddr;
    private int mainId;
    
	public int getmainId() {
		return mainId;
	}

	public void setmainId(int mainId) {
		this.mainId = mainId;
	}
    
	public String getmainName() {
		return mainName;
	}
	public void setmainName(String mainName) {
		this.mainName = mainName;
	}
	
	public String getmainAddr() {
		return mainAddr;
	}
	public void setmainAddr(String mainAddr) {
		this.mainAddr = mainAddr;
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
