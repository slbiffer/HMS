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

import com.hms.bean.category;

import db_con.db_connection;

/**
 * Servlet implementation class categoryDao
 */
@WebServlet("/categoryDao")
public class categoryDao extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public categoryDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	public static int save(category c) {
		int status = 0;
		try {
			System.out.println(c.getMainCid());

			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement(
					"insert into main_category( c_name, c_address, c_telephone, c_authorized_person) values(?,?,?,?)");
			ps.setString(1, c.getCname());
			ps.setString(2, c.getCAddr());
			ps.setString(3, c.getCtelephone());
			ps.setString(4, c.getCAuthorized_person());
			status = ps.executeUpdate();
			
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(category c) {
		int status = 0;
		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con
					.prepareStatement("update main_category set c_name=? ,c_address=? ,c_telephone=? ,c_authorized_person=? where main_category_id=?");
			ps.setString(1, c.getCname());
			ps.setString(2, c.getCAddr());
			ps.setString(3, c.getCtelephone());
			ps.setString(4, c.getCAuthorized_person());
			ps.setInt(5, c.getMainCid());
			status = ps.executeUpdate();
			con.close();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(int id) {
		int status = 0;
		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement("delete from main_category where main_category_id=?");
			ps.setInt(1,id);
			System.out.println(id);
			status = ps.executeUpdate();
			con.close();
			
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<category> getAllRecords() {
		List<category> list = new ArrayList<category>();

		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement("select * from main_category");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				category c = new category();
				c.setMainCid(rs.getInt("main_category_id"));
				c.setCname(rs.getString("c_name"));
				c.setCAddr(rs.getString("c_address"));
				c.setCtelephone(rs.getString("c_telephone"));
				c.setCAuthorized_person(rs.getString("c_authorized_person"));
				list.add(c);

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static category getRecordById(String id) {
		category c = null;
		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement("select * from main_category where main_category_id=?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				c = new category();
				c.setMainCid(rs.getInt("main_category_id"));
				c.setCname(rs.getString("c_name"));
				c.setCAddr(rs.getString("c_address"));
				c.setCtelephone(rs.getString("c_telephone"));
				c.setCAuthorized_person(rs.getString("c_authorized_person"));
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return c;
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
