
package com.aaa.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * @描述: BaseDao通用类
 * @作者: 张运平
 */
public class BaseDao {
	static String url="jdbc:sqlserver://localhost:1433;DatabaseName=Food";
	static String driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	static String user="sa";
	static String password="123456";
	Connection conn=null;
	PreparedStatement ps = null;
	ResultSet rs= null;
	
	//加载驱动
	static{
		
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	//获取连接
	public static Connection  getConnection() {
		Connection conn=null;
		try {
			 conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;

	}
	
	//关闭连接
	public static  void closeAllConnection(Connection conn ,PreparedStatement ps ,ResultSet rs) {
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(ps!=null){
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
	
	//解决问号
	public  PreparedStatement setParams(PreparedStatement ps ,Object[] params) {
		if(params!=null){
			
			for (int i = 0; i < params.length; i++) {
				try {
					ps.setObject(i+1, params[i]);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		}
		
		return ps;

	}
	//共增，删除，修改方法
	public boolean executeUpdate(String sql,Object[] params) {
			conn=getConnection();
			try {
				ps=conn.prepareStatement(sql);
				ps=setParams(ps, params);
				int ret=ps.executeUpdate();
				if(ret>0){
					System.out.println("success!");
					return true;
				}else
				{
					System.out.println("fail!");
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				closeAllConnection(conn, ps, null);
			}
			return false;
	}
	//查询
	public  List<Map<String,Object>> executeQuery(String sql,Object[] params) {
		conn=getConnection();
		List<Map<String,Object>> objectList=new ArrayList<Map<String,Object>>();
		try {
			ps=conn.prepareStatement(sql);
			ps=setParams(ps, params);
			rs=ps.executeQuery();
			ResultSetMetaData rsmd=rs.getMetaData();
			while(rs.next()){//遍历结果集
				Map<String,Object> rowMap=new HashMap<String, Object>();
				for (int i = 0; i < rsmd.getColumnCount(); i++) {
					rowMap.put(rsmd.getColumnName(i+1), rs.getObject(i+1));
					
				}
				objectList.add(rowMap);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAllConnection(conn, ps, rs);
		}
		return objectList;

}
	
}
