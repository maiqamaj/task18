<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Spring MVC </title>
 <link href="../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
 <script src="../webjars/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
 <script src="../webjars/jquery/3.0.0/js/jquery.min.js" ></script>

</head>
<body>

 <a href="?language=en&fName=${param.fName}&lName=${param.lName}"> English </a>|
	<a href="?language=ar&fName=${param.fName}&lName=${param.lName}"> Arabic </a>|
	<a href="?language=fr&fName=${param.fName}&lName=${param.lName}">French</a>

	<h3 style="text-align: center;">Spring MVC Application</h3>
	<br></br> Hello ${param.fName} &nbsp; ${param.lName} 
	<br></br>

	<%
		if (request.getParameter("language") != null) {
		if (request.getParameter("language").equals("en")) {

			out.print("<html><body><pre><h3 style='color:blue;'>English language</h3><br>Welcome ");
            out.print(request.getParameter("fName"));	out.print(" ");
			out.print(request.getParameter("lName"));
		}

		else if (request.getParameter("language").equals("ar")) {
			out.print("<html><body><pre><h3 style='color:red;'>اللغه العربيه<h3> <br>");
			out.print("مرحبا ");
			out.print(request.getParameter("fName"));
						out.print(" ");
			
			out.print(request.getParameter("lName"));
		} else if (request.getParameter("language").equals("fr")) {
			out.print("<html><body><pre><h3 style='color:green;'>le LANGUE FRANÇAISE </h3><br>");
			out.print("bienvenue ");
			out.print(request.getParameter("fName"));	out.print(" ");
			out.print(request.getParameter("lName"));
		}
		out.print("</html></body></pre>");
	}
	%>

<br>
 <h2 style=" text-align: center; ">Region </h2><br><br>

 <table id="displaytable" class="table table-striped"  cellpadding="1" cellspacing="0" style="width: 50%;" >
  
   <thead>
    <tr>  <th scope="row">Region ID</th>

     <th scope="row">Region Name</th>


    </tr>
   </thead>
  <tbody>
  <c:forEach var="region" items="${regions}" >
   <td>${region.getRegionId()}&nbsp;&nbsp;</td>
       <td>${region.regionName}&nbsp;&nbsp;</td>
 
  
  </tr>
  
  </c:forEach>
  </tbody>
  </table>
 </div>
 

</body>
</html>