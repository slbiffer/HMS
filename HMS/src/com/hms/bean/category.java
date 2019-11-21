package com.hms.bean;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class category
 */
@WebServlet("/category")
public class category extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public category() {
		super();
		// TODO Auto-generated constructor stub
	}

	private String mainCid, Cname, CAddr, Ctelephone, CAuthorized_person;

	public String getMainCid() {
		return mainCid;
	}

	public void setMainCid(String mainCid) {
		this.mainCid = mainCid;
	}

	public String getCname() {
		return Cname;
	}

	public void setCname(String cname) {
		Cname = cname;
	}

	public String getCAddr() {
		return CAddr;
	}

	public void setCAddr(String CAddr) {
		this.CAddr = CAddr;
	}

	public String getCtelephone() {
		return Ctelephone;
	}

	public void setCtelephone(String ctelephone) {
		Ctelephone = ctelephone;
	}

	public String getCAuthorized_person() {
		return CAuthorized_person;
	}

	public void setCAuthorized_person(String CAuthorized_person) {
		this.CAuthorized_person = CAuthorized_person;
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
