package controller;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AgendaDao;
import dao.ProcedimentoDao;
import model.Agenda;
import model.Procedimento;

/**
 * Servlet implementation class AgendaController
 */
@WebServlet("/AgendaController")
public class AgendaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgendaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String numero = request.getParameter("numero");
		String idade = request.getParameter("idade");
		String sexo = request.getParameter("sexo");
		
		ProcedimentoDao dao = new ProcedimentoDao();
		Procedimento procedimento = !"".equals(numero) ? dao.buscaPorId(Integer.parseInt(numero)) : null;
		
		if(procedimento != null) {
			AgendaDao agendaDao = new AgendaDao();
			Agenda agenda = new Agenda();
			agenda.setProcedimento(dao.buscaPorId(Integer.parseInt(numero)));
			agenda.setIdade(Integer.parseInt(idade));
			agenda.setSexo(sexo);
			try {
				agendaDao.salvar(agenda);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			request.setAttribute("listaAgenda", agendaDao.Listar());
		} else {
			request.setAttribute("msgErro", "Esse procedimento não existe!");
		}
	    RequestDispatcher view = request.getRequestDispatcher("index.jsp");
	    view.forward(request, response);
	}

}
