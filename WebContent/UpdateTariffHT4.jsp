<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/bescom";%>
<%!String user = "root";%>
<%!String psw = "12051997";%>
<%
String from1 = request.getParameter("from1");
float from =Float.parseFloat(from1);
String rate1=request.getParameter("rate");
float rate =Float.parseFloat(rate1);

if(from1 != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update TariffHT4 set rate=? where from1=?";
ps = con.prepareStatement(sql);

ps.setFloat(1, rate);
ps.setFloat(2, from);

int i = ps.executeUpdate();
if(i > 0)
{
	response.sendRedirect("TariffHT4.jsp");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>