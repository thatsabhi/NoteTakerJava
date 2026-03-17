package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.Entity.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class SaveNoteServlet
 */
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			Note note=new Note(title,content,LocalDate.now());
			Session session= FactoryProvider.getFactory().openSession();
			session.beginTransaction();
			session.persist(note);
			session.getTransaction().commit();
			session.close();
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.print("<h1 style='text-align:center;'>note is added successfully</h1>");
			out.print("<h1 style='text-align:center;'><a href='all_notes.jsp'>View all notes<a/></h1>");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


}
