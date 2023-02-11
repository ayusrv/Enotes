<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.DAO.PostDAO" %>
	<%@page import="com.DB.DBConnect" %>
	<%@page import="com.User.Post" %>

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
<title>Edit Notes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%
	Integer noteid = Integer.parseInt(request.getParameter("note_id"));
	PostDAO post = new PostDAO(DBConnect.getConn());
	Post p = post.getDataById(noteid);
	%>
	<div class="container-fluid">
		<%@include file="all_component/navbar.jsp"%>
		<h1 class="text-center">Edit Your Note</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="NoteEditServlet" method="post">
						<div class="form-group">
							<input type="hidden" value="<%=noteid%>" name="nodeit"> <label
								for="exampleInputEmail1" class="form-label">Enter Title</label>
							<input type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required" value="<%=p.getTitle()%>">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1" class="form-label">Enter
								Content</label>
							<textarea rows="5" cols="" class="form-control" name="content"
								required="required"><%=p.getContent() %></textarea>
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Edit Note</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>