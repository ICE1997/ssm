package com.chzu.ice.dao;

import com.chzu.ice.dao.db.Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AuthDao {
    public static boolean login(String username, String password) {
        Connection conn = Database.getConnection();
        String sql = "SELECT ist_name FROM tb_instructor WHERE ist_id = ? AND ist_password = ?";
        try {
            PreparedStatement psmt = conn.prepareStatement(sql);
            psmt.setString(1,username);
            psmt.setString(2,password);
            return psmt.executeQuery().next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
