package com.skywin.other;

import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.skywin.model.ReUserInf;

@SuppressWarnings("rawtypes")
public class DataInstall {

	private Connection connSrc;
	private Connection connDes;

	private void init() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		Class.forName("com.mysql.jdbc.Driver");
		connSrc = DriverManager.getConnection(
				"jdbc:oracle:thin:@192.168.100.231:1522:mpptest", "gmcc",
				"skywin");
		connDes = DriverManager.getConnection(
				"jdbc:mysql://192.168.1.100:3306/repay", "root", "123456");

	}

	private void close() {
		if (connSrc != null)
			try {
				connSrc.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		if (connDes != null)
			try {
				connDes.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}

	public static void main(String[] args) {
		DataInstall in = new DataInstall();

		try {
			in.init();
			String sql = "select a.* from re_user_inf a where rownum<=1000";
			Class clz = ReUserInf.class;
			List list = in.findList(clz, sql);
			in.insertTable("re_user_inf", clz, list);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			in.close();
		}

	}

	private List findList(Class clz, String sql) throws Exception {
		List list = new ArrayList();
		PreparedStatement ps = connSrc.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			list.add(mapper(rs, clz));
		}
		rs.close();
		ps.close();
		return list;
	}

	private Object mapper(ResultSet rs, Class clz) throws Exception {
		Field[] fs = clz.getDeclaredFields();
		Object obj = clz.newInstance();
		for (Field f : fs) {
			String name = f.getName();
			f.setAccessible(true);
			Class type = f.getType();
			Object val = rs.getObject(name);
			if(val==null){
				continue;
			}
			if(val instanceof BigDecimal){
				
				BigDecimal tmp = (BigDecimal) val;
				if(type.getName().endsWith("Long")){
					val = tmp.longValue();
				}else if(type.getName().endsWith("Integer")){
					val = tmp.intValue();
				}else if(type.getName().endsWith("Short")){
					val = tmp.shortValue();
				}else if(type.getName().endsWith("Double")){
					val = tmp.doubleValue();
				}else{
				}
			}
			f.set(obj, val);
		}
		return obj;

	}

	private List<String> findAllFields(Class clz){
		List<String> list = new ArrayList<String>();
		Field[] fs = clz.getDeclaredFields();
		for (Field f : fs) {
			String name = f.getName();
			list.add(name);
		}
		return list;
	}
	
	private String preSql(String tabName,List<String> list){
		
		int size=list.size();
		String sql="insert into "+tabName+" (";
		StringBuilder sb = new StringBuilder();
		for(String n:list){
			sb.append(n).append(',');
		}
		sb.deleteCharAt(sb.length()-1);
		sb.append(')').append(" values (");
		for(int i=0;i<size;i++)
			sb.append("?,");
		
		sb.deleteCharAt(sb.length()-1);
		sb.append(')');
		
		return sql+sb.toString();
	}
	private void setPreSql(PreparedStatement ps,Object obj,List<String> list)
			throws Exception {
		Class clz = obj.getClass();
		int i=0;
		for(String name:list){
			i++;
			Field field = clz.getDeclaredField(name);
			field.setAccessible(true);
			Object val = field.get(obj);
			ps.setObject(i, val);
		}
		ps.addBatch();
		
	}
	
	private void insertTable(String tabName,Class clz,List datas) throws Exception{
		List<String> fs = findAllFields(clz);
		String sql = preSql(tabName, fs);
		PreparedStatement ps = connDes.prepareStatement(sql);
		for(Object obj:datas){
			setPreSql(ps,obj,fs);
		}
		connDes.setAutoCommit(false);
		ps.executeBatch();
		connDes.commit();
		ps.close();
	}
}
