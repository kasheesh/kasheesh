<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<%
String from1 = request.getParameter("from1");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "bescom";
String userid = "root";
String password = "12051997";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Tariff Data</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style type="text/css">
  body, html {
  height: 100%;
}
  body {
     background-image: url('Image/Tariff.jpg');
       height: 100%;

  
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  }


div.transbox {
  margin: 20px;
  background-color: #ffffff;
  border: 1px solid black;
  opacity: 0.6;
  filter: alpha(opacity=60); /* For IE8 and earlier */
}

div.transbox p {
  margin: 1%;
  font-weight: bold;
  font-size: 40px;
  color: green;
  text-align: center;
}
</style>
</head>
<body >
  <div class="transbox">
    <p>SOLAR TARIFF</p>
  </div>
   
    

<div class="row" style=" margin-left: 23px;margin-top: 89px;">
  <div class="col-sm-3">
    <div class="card" style="opacity:0.8">
       <ul class="list-group list-group-flush" style="font-weight:bold;text-align:center;">
         <li class="list-group-item"><a href="Tariff.jsp">TARIFF</a></li>
    <li class="list-group-item"><a href="TariffLT2ai.jsp">Tariff LT-2(A)(I)</a></li>
    <li class="list-group-item"><a href="TariffLT2aii.jsp">Tariff LT-2(A)(II)</a></li>
    <li class="list-group-item"><a href="TariffLT2bi.jsp">Tariff LT-2(B)(I)</a></li>
    <li class="list-group-item"><a href="TariffLT2bii.jsp">Tariff LT-2(B)(II)</a></li>
    <li class="list-group-item"><a href="TariffHT2ci.jsp">Tariff HT-2(C)(I)</a></li>
    <li class="list-group-item"><a href="TariffHT2cii.jsp">Tariff HT-2(C)(II)</a></li>
    <li class="list-group-item"><a href="TariffHT4.jsp">Tariff HT-4</a></li>
  </ul>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card" style="height: 115px;">
      <div class="card-body">
      <table class="table table-sm table-bordered table-striped" style="text-align:center;font-weight:bold;background-color:#00ff00">
  <thead>
    <tr>
     <th scope="col" colspan="2">Range</th>
      <th scope="col" >Rate</th>
      <th scope="col" >Edit/Update</th>
    </tr>
  </thead>
  <tbody>
   <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
PreparedStatement ps=connection.prepareStatement("select * FROM Tariffht2ci where from1=?" );
ps.setString(1,from1);

resultSet = ps.executeQuery();
while(resultSet.next()){
%>
 <form action="UpdateTariff2ci.jsp">
    <tr>
   
      <input type="hidden" name="from1" value="<%=resultSet.getString("from1") %>">
      <td><%=resultSet.getString("from1") %></td>
      <td><%=resultSet.getString("to1") %></td>
      <td><input type="text" name="rate" value="<%=resultSet.getString("rate") %>"> </td>
       <td><a href="EditTariff2ci.jsp" style="color:black;font-weight:bold"><button type="submit" class="btn btn-warning" >UPDATE</button></a></td>
   
    </tr>
        </form>
    <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
  </tbody>
</table>
      </div>
    </div>
  </div>
</div>

</body>
</html>                            