package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/servlet/Contact"})
public class Contact extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			ContactBean c = new ContactBean();
			c.setName(request.getParameter("name"));
			c.setCompany(request.getParameter("company"));
			c.setQuestion(request.getParameter("question"));
			c.setMail(request.getParameter("mail"));
			c.setResume(request.getParameter("resume"));

			request.setAttribute("contact", c);

			if(c.getResume().equals("Yes")) {
				request.getRequestDispatcher("/jsp/confirm2.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("/jsp/confirm1.jsp").forward(request, response);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}


	}

}
