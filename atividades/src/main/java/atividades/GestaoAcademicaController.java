package atividades;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/index")
public class GestaoAcademicaController extends HttpServlet {
	
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 //Preparação dos parâmetros.    
	    String notaStr = req.getParameter("nota");
	    float nota = notaStr == null || notaStr.isEmpty() ? 0 : Float.parseFloat(notaStr);

	    String frequenciaStr = req.getParameter("frequencia");
	    float frequencia = frequenciaStr == null || frequenciaStr.isEmpty()? 0 : Float.parseFloat(frequenciaStr);

	    //Chamada ao Model.
	    String resultado = Model.validaDados(frequencia, nota)+"";
	    
	    //Passagem de atributos para o JSP.
	    req.setAttribute("resultado", resultado);

	    //Chamando o JSP.
	    String nextJsp = "/index.jsp";
	    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJsp);
	    dispatcher.forward(req, resp);
		
		
	}
	

}
	