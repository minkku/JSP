package com.min.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.min.dto.ProductVO;

import util.DBmanager;

public class ProductDAO {
	private ProductDAO() {
		
	}
	
	private static ProductDAO instance = new ProductDAO();
	
	public static ProductDAO getInstance() {
		return instance;
	}
	
	//CRUD
	
	public List<ProductVO> selectAllProducts() {
		String sql = "SELECT * FROM product ORDER BY code DESC";
		List<ProductVO> list = new ArrayList<ProductVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBmanager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ProductVO pVo = new ProductVO();
				pVo.setCode(rs.getInt("code"));
				pVo.setName(rs.getString("name"));
				pVo.setPrice(rs.getInt("price"));
				pVo.setPictureUrl(rs.getString("pictureUrl"));
				pVo.setDescription(rs.getString("description"));
				list.add(pVo);
			}
		} catch (Exception e) {
			e.getStackTrace();
		} finally {
			DBmanager.close(conn, pstmt, rs);
		}
		return list;
	}
}
