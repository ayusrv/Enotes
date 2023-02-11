<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-circle-o" aria-hidden="true"></i>
						<h4>Login</h4>

						<%
						String invalidMsg = (String) session.getAttribute("login-failed");
						if (invalidMsg != null) {
						%>
						<div class="alert alert-danger" role="alert"><%=invalidMsg%></div>
						<%
						session.removeAttribute("login-failed");
						}
						%>

						<%
						String withoutLogin = (String) session.getAttribute("login-Error");
						if (withoutLogin != null) {
						%>
						<div class="alert alert-danger" role="alert"><%=withoutLogin%></div>
						<%
						session.removeAttribute("login-Error");
						}
						%>

						<%
						String lgMsg = (String) session.getAttribute("logoutMsg");
						if (lgMsg != null) {
						%>
						<div class="alert alert-success" role="alert"><%=lgMsg%></div>

						<%
						session.removeAttribute("logoutMsg");
						}
						%>

					</div>
					<div class="card-body">
						<form>
							<div class="form-group">
								<label>Enter Your Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label>Enter Your Password</label> <label
									for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1">
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
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