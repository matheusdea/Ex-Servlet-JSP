package mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@SuppressWarnings("serial")
@WebServlet("/imc")
public class imcController extends HttpServlet {

	private String valor(HttpServletRequest req, String param, String padrao) {
		String pesoStr = req.getParameter(param);
		if(pesoStr == null) {
			pesoStr = padrao;
		}
		return pesoStr;
	}
	
	private int toInt(
			HttpServletRequest req, String param,String padrao) {

		return Integer.parseInt(valor(req, param, padrao));
	}
	

	private double toDouble(
			HttpServletRequest req,
			String param,
			String padrao) {

		return Double.parseDouble(valor(req,param,padrao));
	}
	
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		double peso = toDouble(req, "peso", "0");
		double altura = toDouble(req, "altura","0");
		int sexo = toInt(req,"selectsexo", "0");
		
		String resultadoIMC = imcModel.calcular(peso, altura, sexo);
		
		//Passando parametro para o JSP
		req.setAttribute("resultado", resultadoIMC);
		
		req.getRequestDispatcher("imcView.jsp").forward(req, resp);
		
		
	}

	
}
