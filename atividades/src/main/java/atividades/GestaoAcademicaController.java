package atividades;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/atividade2")
public class GestaoAcademicaController extends HttpServlet {
	
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 //Preparação dos parâmetros.    
	    String notaStr = req.getParameter("nota");
	    String aluno = req.getParameter("aluno");
	    float nota = notaStr == null || notaStr.isEmpty() ? 0 : Float.parseFloat(notaStr);

	    String frequenciaStr = req.getParameter("frequencia");
	    float frequencia = frequenciaStr == null || frequenciaStr.isEmpty()? 0 : Float.parseFloat(frequenciaStr);

	    String resultado;
	    
	    if (notaStr == null || frequenciaStr == null) 
	    	resultado = "";
	    
	    else {

		    //Chamada ao Model.
		    int aprovacao = Model.validaDados(frequencia, nota);
	    	
	    	if (aprovacao == 1) 
	    		resultado = "<div class='alert alert-success'><center>"+aluno.toUpperCase()+" APROVADO(A)</center></div>";
	    
	    	else
	    		resultado = "<div class='alert alert-danger'><center>"+aluno.toUpperCase()+" REPROVADO(A)</center></div>";
	    }
	    
	    //Passagem de atributos para o JSP.
	    req.setAttribute("resultado", resultado);

	    //Chamando o JSP.
	    String nextJsp = "/Visao.jsp";
	    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJsp);
	    dispatcher.forward(req, resp);
		
		
	}
	

}
	