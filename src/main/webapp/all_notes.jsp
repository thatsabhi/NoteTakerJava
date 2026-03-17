<!DOCTYPE html>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.Entity.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SalseforceUI</title>
    <%@ include file="all_js_css.jsp"%>
</head>
<body>
    <div id="main1">
       	<div id="header1">
            <div style="display: flex; align-items: center; gap: 5px;">
    			<div id="logo1">
        			<img src="img/note.png" alt="" style="height: 70px; width: auto;">
    			</div>
    			<div class="text0" style="
    			text-align:auto;
			    color: black;
			    font-weight: bold;
			    font-size:40px;
			    display: flex;
    			">Note Taker</div>
			</div>
            <div class="text1"><a href="index.jsp">Home</a></div>
            <div class="text1"><a href="AddNotes.jsp">Add Notes</a></div>
            <div class="text1"><a href="all_notes.jsp">Show Notes</a></div>
            
            
            
            <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
        <button class="btn btn-outline-light" type="submit">Search</button>
      </form>
        </div>
       	
       	<label style="font-size:40px;">All Notes:-</label>
       	<div class="row">
	<div class="col-12">
	
	<%
	Session s=FactoryProvider.getFactory().openSession();
	Query q=s.createQuery("from Note");
	List<Note>list=q.list();
	for(Note note:list){
	%>
		
<div class="card mt-3" style="margin-left:70px;margin-right:70px;">
  <img src="img/note.png" style="max-width:60px; display: block; margin: auto;" class="card-img-top" alt="Note">
  <div class="card-body">
    <h5 class="card-title"><%= note.getTitle() %></h5>
    <p class="card-text">
    <%= note.getContent() %>
    </p>
    <p><%=note.getDate() %></p>
    <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">update</a>
    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
    
  </div>
</div>
<%		
		
s.close();
	}
	%>
	</div>
	</div>
</div>

</body>
</html>
