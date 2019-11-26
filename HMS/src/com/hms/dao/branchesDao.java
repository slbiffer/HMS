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

import com.hms.bean.branches;

import db_con.db_connection;

/**
 * Servlet implementation class branchesDao
 */
@WebServlet("/branchesDao")
public class branchesDao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public branchesDao() {
        super();
        // TODO Auto-generated constructor stub
    }

	public static int save(branches b) {
		int status = 0;
		try {
			System.out.println(b.getBranch_id());

			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement(
					"insert into branch(b_name,b_address,b_telephone,b_authorized_person) values(?,?,?,?)");
			ps.setString(1, b.getB_name());
			ps.setString(2, b.getB_address());
			ps.setString(3, b.getB_telephone());
			ps.setString(4,b.getB_authorized_person() );
			status = ps.executeUpdate();
			
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(branches b) {
		int status = 0;
		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con
					.prepareStatement("update branch set b_name=? ,b_address=? ,b_telephone=? ,b_authorized_person=? where branch_id=?");
			ps.setString(1, b.getB_name());
			ps.setString(2, b.getB_address());
			ps.setString(3, b.getB_telephone());
			ps.setString(4, b.getB_authorized_person());
			ps.setInt(5, b.getBranch_id());
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
			PreparedStatement ps = con.prepareStatement("delete from branch where branch_id=?");
			ps.setInt(1,id);
			status = ps.executeUpdate();
			con.close();
			
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<branches> getAllRecords() {
		List<branches> list = new ArrayList<branches>();

		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement("select * from branch");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				branches b = new branches();
				b.setBranch_id(rs.getInt("branch_id"));
				b.setB_name(rs.getString("b_name"));
				b.setB_address(rs.getString("b_address"));
				b.setB_telephone(rs.getString("b_telephone"));
				b.setB_authorized_person(rs.getString("b_authorized_person"));
				list.add(b);

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static branches getRecordById(int id) {
		branches b = null;
		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement("select * from branch where branch_id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new branches();
				b.setBranch_id(rs.getInt("branch_id"));
				b.setB_name(rs.getString("b_name"));
				b.setB_address(rs.getString("b_address"));
				b.setB_telephone(rs.getString("b_telephone"));
				b.setB_authorized_person(rs.getString("b_authorized_person"));

				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return b;
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
