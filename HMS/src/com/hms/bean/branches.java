package com.hms.bean;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class branches
 */
@WebServlet("/branches")
public class branches extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public branches() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    private String b_name,b_address,b_telephone,b_authorized_person;
    private int branch_id;

	public int getBranch_id() {
		return branch_id;
	}

	public void setBranch_id(int branch_id) {
		this.branch_id = branch_id;
	}


	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public String getB_address() {
		return b_address;
	}

	public void setB_address(String b_address) {
		this.b_address = b_address;
	}

	public String getB_telephone() {
		return b_telephone;
	}

	public void setB_telephone(String b_telephone) {
		this.b_telephone = b_telephone;
	}

	public String getB_authorized_person() {
		return b_authorized_person;
	}

	public void setB_authorized_person(String b_authorized_person) {
		this.b_authorized_person = b_authorized_person;
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
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
