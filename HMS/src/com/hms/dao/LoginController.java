package com.hms.dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db_con.db_connection;
import util.Session;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		try {

			String Username = request.getParameter("uname");
			String Password = request.getParameter("pass");
			System.out.println("un:  " + Username);
			System.out.println("pw: " + Password);

			Connection con = db_connection.getconn();
			String sql = "SELECT * FROM employes";
			java.sql.PreparedStatement stm = con.prepareStatement(sql);
			ResultSet rs = stm.executeQuery(sql);
			while (rs.next()) {
				System.out.println("Recived params name :" + Username + "pass: " + Password);
				System.out.println("DB recived params name :" + rs.getString("emp_username") + " pass: "
						+ rs.getString("emp_password"));

				if (Username.equals(rs.getString("emp_username")) && Password.equals(rs.getString("emp_password"))) {
					// response.sendRedirect("index.jsp");

					HttpSession session = request.getSession(true); // reuse existing
					// session if exist
					// or create one
					session.setAttribute("user", Username);
					session.setMaxInactiveInterval(30); // 30 seconds
					request.getRequestDispatcher("UserUI.jsp").forward(request, response);
					return;
				}

			}

		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("error " + ex);
			response.sendRedirect("ErrorLogin.jsp");
		}

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
