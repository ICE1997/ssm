package com.chzu.ice.dao.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
    private static Connection conn;
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://47.106.132.194/ssm?useUnicode=true&&characterEncoding=UTF-8&&useSSL=false";
    private static final String USER = "ssm";
    private static final String PASSWORD = "ssm";

    public static Connection getConnection() {
        if(conn == null) {
            try {
                Class.forName(DRIVER);
                conn = DriverManager.getConnection(URL,USER,PASSWORD);
                System.out.println("连接成功");
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
        }
        return conn;
    }
}
