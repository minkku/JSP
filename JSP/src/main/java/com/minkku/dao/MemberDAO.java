package com.minkku.dao;

import java.sql.Connection;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.minkku.dto.MemberVO;

public class MemberDAO {
	private MemberDAO() {

	}

	private static MemberDAO instance = new MemberDAO();

	public static MemberDAO getInstance() {
		return instance;
	}

	public Connection getConnection() throws Exception {
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/TestDB");
		conn = ds.getConnection();
		return conn;
	}

	// 사용자 인증시 사용하는 매소드
	public int userCheck(String userId, String pw) {
		int result = -1;
		String sql = "select pw from member where userId = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString("pw") != null && rs.getString("pw").equals(pw)) {
					result = 1;
				} else {
					result = 0;
				}
			} else {
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	//아이디로 회원정보 가져오는 메소드
	public MemberVO getMember(String userId) {
		MemberVO mVo = null;
		String sql = "select from member where userId = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				mVo = new MemberVO();
				mVo.setName(rs.getString("name"));
				mVo.setUserId(rs.getString("userId"));
				mVo.setPw(rs.getString("pw"));
				mVo.setEmail(rs.getString("email"));
				mVo.setMobile(rs.getString("mobile"));
				mVo.setAdmin(rs.getInt("admin"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) pstmt.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return mVo;
	}
}
