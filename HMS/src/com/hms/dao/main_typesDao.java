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

import com.hms.bean.main_types;

import db_con.db_connection;

/**
 * Servlet implementation class main_typesDao
 */
@WebServlet("/main_typesDao")
public class main_typesDao extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public main_typesDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	public static int save(main_types u) {
		int status = 0;
		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con
					.prepareStatement("insert into main_type(main_type_id, main_type_Name, main_type_addr) values(?,?,?)");
			ps.setString(1, u.getmainId());
			ps.setString(2, u.getmainName());
			ps.setString(3, u.getmainAddr());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(main_types u) {
		int status = 0;
		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con
					.prepareStatement("update main_type set main_type_Name=?,main_type_addr=? where main_type_id=?");
			ps.setString(1, u.getmainName());
			ps.setString(2, u.getmainAddr());
			ps.setString(3, u.getmainId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(main_types u) {
		int status = 0;
		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement("delete from main_type where main_type_id=?");
			ps.setString(1,u.getmainId());
			System.out.println("sds"+u);
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<main_types> getAllRecords() {
		List<main_types> list = new ArrayList<main_types>();

		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement("select * from main_type");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				main_types u = new main_types();
				u.setmainId(rs.getString("main_type_id"));
				u.setmainName(rs.getString("main_type_Name"));
				u.setmainAddr(rs.getString("main_type_addr"));
				list.add(u);
				
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static main_types getRecordById(String id) {
		main_types u = null;
		try {
			Connection con =db_connection.getconn();
			PreparedStatement ps = con.prepareStatement("select * from main_type where main_type_id=?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new main_types();
				u.setmainId(rs.getString("main_type_id"));
				u.setmainName(rs.getString("main_type_Name"));
				u.setmainAddr(rs.getString("main_type_addr"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}

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
