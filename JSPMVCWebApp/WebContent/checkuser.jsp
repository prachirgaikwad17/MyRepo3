<jsp:useBean id="ob" class="com.zensar.models.LoginBean" scope="request"></jsp:useBean>
<jsp:setProperty property="username" name="ob"/>
<jsp:setProperty property="password" name="ob" param="passwd"/>

<%
	
	
	//invoke business logic of model
	
	if(ob.validateUser())
	{ %>
		<jsp:forward page="welcome.jsp">
			<jsp:param value="Core Java" name="book1"/>
			<jsp:param value="Spring" name="book2"/>
		</jsp:forward>	
<% 	}
	else
	{ %>
		<p>("Sorry! Invalid Username/Password");</p>	
		<jsp:include page="login.jsp"></jsp:include>
<%	}



%>