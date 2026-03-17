<%@page import="com.Entity.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="all_js_css.jsp" %>
</head>
<body>
	<div id="main">
    <div id="header">
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
       	<div id="fakeHeader"></div>
    <h1>Edit your note:-</h1>
    <%
    int noteId=Integer.parseInt(request.getParameter("note_id").trim());
    Session s=FactoryProvider.getFactory().openSession();
    s.beginTransaction();
    Note note=(Note)s.get(Note.class,noteId);
    %>
    
    
    <form action="updateServlet" method="post">
    <input value="<%= note.getId() %>" name="noteId" type="hidden"/>
  <div class="mb-3" style="margin-top:30px; margin-left:20px;
  margin-right:30px;
  ">
   <label for="title" class="form-label" style="font-size:40px;">Note Title</label>
    <input 
    name="title"
    placeholder="Enter here..."
    value="<%= note.getTitle() %>"
    required type="text" 
    class="form-control" 
    id="title" 
    aria-describedby="emailHelp"
    style="margin-top:10px;padding:10px;">
  </div>
  <div class="mb-3"style="margin-top:40px; margin-left:20px;
  margin-right:30px;
  ">
    <label for="exampleInputPassword1" class="form-label" style="font-size:40px;">Note Content</label>
    <textarea 
    name="content"
    required id="content"
    class="form-control"
    style="height:200px" 
    placeholder="Enter here..."
    
    
    ><%=note.getContent()%></textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-success" >Save</button>
  </div>
</form>
    </div>
</body>
</html>