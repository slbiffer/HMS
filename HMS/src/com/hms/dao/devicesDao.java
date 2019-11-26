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

import com.hms.bean.devices;

import db_con.db_connection;

/**
 * Servlet implementation class devicesDao
 */
@WebServlet("/devicesDao")
public class devicesDao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public devicesDao() {
        super();
        // TODO Auto-generated constructor stub
    }

    public static int save(devices d) {
		int status = 0;
		try {
			System.out.println(d.getDevice_id());

			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement(
					"insert into devices(d_name,d_serial_number,d_warranty_period,assign_date) values(?,?,?,?)");
			ps.setString(1, d.getD_name());
			ps.setString(2, d.getD_serial_number());
			ps.setString(3, d.getD_warranty_period());
			ps.setString(4, d.getAssign_date() );
			status = ps.executeUpdate();
			
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(devices d) {
		int status = 0;
		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con
					.prepareStatement("update devices set d_name=? ,d_serial_number=? ,d_warranty_period=? ,assign_date=? where device_id=?");
			ps.setString(1, d.getD_name());
			ps.setString(2, d.getD_serial_number());
			ps.setString(3, d.getD_warranty_period());
			ps.setString(4, d.getAssign_date());
			ps.setInt(5, d.getDevice_id());
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
			PreparedStatement ps = con.prepareStatement("delete from devices where device_id=?");
			ps.setInt(1,id);
			status = ps.executeUpdate();
			con.close();
			
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<devices> getAllRecords() {
		List<devices> list = new ArrayList<devices>();

		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement("select * from devices");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				devices d = new devices();
				d.setDevice_id(rs.getInt("device_id"));
				d.setD_name(rs.getString("d_name"));
				d.setD_serial_number(rs.getString("d_serial_number"));
				d.setD_warranty_period(rs.getString("d_warranty_period"));
				d.setAssign_date(rs.getString("assign_date"));

				list.add(d);

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static devices getRecordById(String id) {
		devices d = null;
		try {
			Connection con = db_connection.getconn();
			PreparedStatement ps = con.prepareStatement("select * from devices where device_id=?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new devices();
				d.setDevice_id(rs.getInt("device_id"));
				d.setD_name(rs.getString("d_name"));
				d.setD_serial_number(rs.getString("d_serial_number"));
				d.setD_warranty_period(rs.getString("d_warranty_period"));
				d.setAssign_date(rs.getString("assign_date"));

				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return d;
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
