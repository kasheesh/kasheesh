<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <li class="list-group-item"><a href="Tariff.jsp">TARIFF</a> </li>
    <li class="list-group-item"><a href="TariffLT2ai.jsp">Tariff LT-2(A)(I)</a> </li>
    <li class="list-group-item"><a href="TariffLT2aii.jsp">Tariff LT-2(A)(II)</a> </li>
    <li class="list-group-item"><a href="TariffLT2bi.jsp">Tariff LT-2(B)(I)</a> </li>
    <li class="list-group-item"><a href="TariffLT2bii.jsp">Tariff LT-2(B)(II)</a> </li>
    <li class="list-group-item"><a href="TariffHT2ci.jsp">Tariff HT-2(C)(I)</a> </li>
    <li class="list-group-item"><a href="TariffHT2cii.jsp">Tariff HT-2(C)(II)</a> </li>
    <li class="list-group-item"><a href="TariffHT4.jsp">Tariff HT-4</a> </li>
  </ul>
    </div>
  </div>
  
</div>

</body>
</html> 