package controller;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Tarefa;

@WebServlet (name="TarefaController", urlPatterns = "/TarefaController")
public class  TarefaController extends HttpServlet {

 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, NoSuchMethodException, ClassNotFoundException {
        String acao = request.getParameter("acao");
        if (acao.equals("confirmaOperacao")) {
            confirmarOperacao(request, response);
        } else {
            if (acao.equals("prepararOperacao")) {
                try {
                    prepararOperacao(request, response);

                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(TarefaController.class.getName()).log(Level.SEVERE, null, ex);
                }
            } else {
                if (acao.equals("Only")) {
                    request.setAttribute("tarefas", Tarefa.findAll());
                    
                    RequestDispatcher view = request.getRequestDispatcher("pesquisaTarefa.jsp");
                    view.forward(request, response);

                }
            }
        }
    }

    protected void prepararOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ClassNotFoundException {
        String operacao = request.getParameter("operacao");
        request.setAttribute("operacao", operacao);
       
        if (!operacao.equals("Incluir")) {
            Tarefa tarefa = Tarefa.find(Long.parseLong(request.getParameter("id")));
            request.setAttribute("tarefa", tarefa);

        }
        request.getRequestDispatcher("manterTarefa.jsp").forward(request, response);
    }

    public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, NoSuchMethodException {
        String operacao = request.getParameter("operacao");
         
        String nome = request.getParameter("txtNomeTarefa");
        String descricao = request.getParameter("txtDescricaoTarefa");
        String status = request.getParameter("optStatus");
        String dataInicio = request.getParameter("txtDataInicio");
        String dataFim = request.getParameter("txtDataFim");
        String aluno = request.getParameter("optAluno");
        String projeto = request.getParameter("optProjeto");
        
        Long id = null;
        
       
        
        if (!operacao.equals("Incluir")) {
            id = Long.parseLong(request.getParameter("id"));
       
        }
          
          
        
        try {
          Tarefa tarefa = new Tarefa(id, nome, descricao, status, dataInicio, dataFim, aluno, projeto);
         
          
            if (operacao.trim().equals("Incluir")) {
                tarefa.save();
               
            } else if (operacao.equals("Editar")) {
                tarefa.setId(id);
                tarefa.save();
            } else if (operacao.equals("Excluir")) {
                tarefa.setId(id);
                tarefa.remove();
            }
            RequestDispatcher view = request.getRequestDispatcher("TarefaController?acao=Only");
            view.forward(request, response);
        } catch (IOException e) {
            throw new ServletException(e);
        } catch (ServletException e) {
            throw e;
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(TarefaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchMethodException ex) {
            Logger.getLogger(TarefaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TarefaController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(TarefaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchMethodException ex) {
            Logger.getLogger(TarefaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TarefaController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
