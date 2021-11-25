<%@ page import= "PPS_Project.bean.*, PPS_Project.DAO.User_DAO, PPS_Project.DAO.Transactions_DAO, java.util.List, javax.servlet.http.HttpSession " %>
 
 <%@ page isELIgnored="false"%>


<%--- String userEmail = user.getUser_email();
if(request.getParameter("activityList") == null) { 
	Transactions_DAO Transactions = new Transactions_DAO();        // listed in attribute 'transactions list'
	List <Transactions> transactions_list = Transactions.getAllTransactionsOfUser(userEmail);
	request.setAttribute("activityList", transactions_list);       
}--%>


<%
User_DAO Userinfo= new User_DAO();        // listed in attribute 'transactions list'
List <User> User_list = Userinfo.getAllInactiveUser( );
%>
 




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Activity page</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>
<body>

<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: black">
			<div>
			<center>
			<h1 style = "color: white">PPS Crypto</h1>
			</center>
				
			</div>
		</nav>
</header>
	
	<a href="log-out" class="btn btn-fail" style ="float:right">Logout</a>
	
	

    <a href="user-balancePage.jsp" class="btn">Your balance</a>
    <a href="user-transferPage.jsp" class="btn">Transfer</a>
    <a href="user-buyPage.jsp" class="btn">buy</a>
    <a href="user-sellPage.jsp" class="btn">sell</a>

<div align="center">
        <caption><h2>Activity List</h2></caption>
        <br>
        <table border="1" cellpadding="5">
            <tr>
                <th>Inactive User</th>
                
            </tr>
            
       
             <%
				for (User user : User_list) {
			%>
			
			<tr>
				   <td>  <%=user.getUser_email()%>           </td>
				   
			</tr>

			<%
			}
			%>
            
           
            
			
        </table>
    </div>  

</body>
</html>