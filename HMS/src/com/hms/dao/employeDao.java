package com.hms.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hms.bean.Employes;

import db_con.db_connection;

/**
 * Servlet implementation class employeDao
 */
@WebServlet("/employeDao")
public class employeDao extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public employeDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	public static int save(Employes e) {
		int status = 0;
		try {
			System.out.println("emp: "+e.getEmp_username());
			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement(
					"insert into employes(emp_fname,emp_lname,emp_username,emp_email,emp_password,emp_address,emp_position_title,emp_telephone) values(?,?,?,?,?,?,?,?)");
			ps.setString(1, e.getEmp_fname());
			ps.setString(2, e.getEmp_lname());
			ps.setString(3, e.getEmp_username());
			ps.setString(4, e.getEmp_email());
			ps.setString(5, e.getEmp_password());
			ps.setString(6, e.getEmp_address());
			ps.setString(7, e.getEmp_position_title());
			ps.setString(8, e.getEmp_telephone());
			status = ps.executeUpdate();

			con.close();
		} catch (Exception x) {
			System.out.println(x);
		}
		return status;
	}

	public static int update(Employes e) {
		int status = 0;
		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement(
					"update employes set emp_fname=?, emp_lname=?, emp_email=?, emp_password=?, emp_address=?, emp_position_title=?, emp_telephone=? where emp_id=?");
			ps.setString(1, e.getEmp_fname());
			ps.setString(2, e.getEmp_lname());
			ps.setString(3, e.getEmp_email());
			ps.setString(4, e.getEmp_password());
			ps.setString(5, e.getEmp_address());
			ps.setString(6, e.getEmp_position_title());
			ps.setString(7, e.getEmp_telephone());
			status = ps.executeUpdate();
			con.close();

		} catch (Exception x) {
			System.out.println(x);
		}
		return status;
	}

	public static int delete(int id) {
		int status = 0;
		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement("delete from employes where branch_id=?");
			ps.setInt(1, id);
			status = ps.executeUpdate();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<Employes> getAllRecords() {
		List<Employes> list = new ArrayList<Employes>();

		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement("select * from employes");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Employes e = new Employes();
				e.setEmp_fname(rs.getString("emp_fname"));
				e.setEmp_lname(rs.getString("emp_lname"));
				e.setEmp_email(rs.getString("emp_email"));
				e.setEmp_address(rs.getString("emp_address"));
				e.setEmp_position_title(rs.getString("emp_position_title"));
				e.setEmp_telephone(rs.getString("emp_telephone"));

				list.add(e);

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static Employes getRecordById(int id) {
		Employes e = null;
		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement("select * from employes where emp_id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				e = new Employes();
				e.setEmp_fname(rs.getString(""));
				e.setEmp_lname(rs.getString("emp_lname"));
				e.setEmp_email(rs.getString("emp_email"));
				e.setEmp_address(rs.getString("emp_address"));
				e.setEmp_position_title(rs.getString("emp_position_title"));
				e.setEmp_telephone(rs.getString("emp_telephone"));

			}
		} catch (Exception x) {
			System.out.println(x);
		}
		return e;
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
