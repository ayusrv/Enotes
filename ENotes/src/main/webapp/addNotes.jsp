<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login Error", "Please Login...");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddNotes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<%@include file="all_component/navbar.jsp"%>
		<h1 class="text-center">Add Your Note</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="AddNotesServlet" method="post">
						<div class="form-group">
							<%
							UserDetails us = (UserDetails) session.getAttribute("userD");
							if (us != null) {
							%>
							<input type="hidden" value="<%=us.getId()%>" name="uid">
							<%
							}
							%>
							<input type="hidden" value="<%=us.getName()%>" name="uid">
							<label for="exampleInputEmail1" class="form-label">Enter
								Title</label> <input type="text" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								name="title" required="required">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1" class="form-label">Enter
								Content</label>
							<textarea rows="5" cols="" class="form-control" name="content"
								required="required"></textarea>
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Add Note</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>