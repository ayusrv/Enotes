<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Registration</h4>
					</div>

					<%
					String regMsg = (String) session.getAttribute("reg-success");

					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert">
						<%=regMsg%>
						Login<a href="login.jsp">Click Here</a>
					</div>
					<%
					}
					%>

					<%
					String FailedMsg = (String) session.getAttribute("failed-msg");

					if (FailedMsg != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=FailedMsg%>
					</div>
					<%
					}
					%>
					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="form-group">
								<label>Enter Your Full Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="fname">
							</div>
							<div class="form-group">
								<label>Enter Your Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail">
							</div>
							<div class="form-group">
								<label>Enter Your Password</label> <label
									for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword">
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid bg-dark mt-1">
	<p class="text-center text-white">Thank you for using my ENotes.</p>
	<p class="text-center text-white">This code is developed by Ayush.
	</p>
</div>
</body>
</html>