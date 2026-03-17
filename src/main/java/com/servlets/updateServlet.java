package com.servlets;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.Entity.Note;
import com.helper.FactoryProvider;

public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public updateServlet() {
        super();
      
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(request.getParameter("noteId").trim());
			String title= request.getParameter("title");
			String content=request.getParameter("content");
			Session s=FactoryProvider.getFactory().openSession();
			s.beginTransaction();
			Note note= s.get(Note.class, id);
			note.setTitle(title);
			note.setContent(content);
			note.setDate(LocalDate.now());
			s.getTransaction().commit();
			s.close();
			response.sendRedirect("all_notes.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
