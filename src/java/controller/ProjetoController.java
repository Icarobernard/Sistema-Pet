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
import model.Projeto;
@WebServlet (name="ProjetoController", urlPatterns = "/ProjetoController")
public class  ProjetoController extends HttpServlet {

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
                    Logger.getLogger(ProjetoController.class.getName()).log(Level.SEVERE, null, ex);
                }
            } else {
                if (acao.equals("Only")) {
                    request.setAttribute("projetos", Projeto.findAll());
                    RequestDispatcher view = request.getRequestDispatcher("pesquisaProjeto.jsp");
                    view.forward(request, response);

                }
            }
        }
    }

    protected void prepararOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ClassNotFoundException {
        String operacao = request.getParameter("operacao");
        request.setAttribute("operacao", operacao);
       
        if (!operacao.equals("Incluir")) {
            Projeto projeto = Projeto.find(Long.parseLong(request.getParameter("id")));
            request.setAttribute("projeto", projeto);

        }
        request.getRequestDispatcher("manterProjeto.jsp").forward(request, response);
    }

    public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, NoSuchMethodException {
        String operacao = request.getParameter("operacao");
         
        String nome = request.getParameter("txtNomeProjeto");
        String descricao = request.getParameter("txtDescricaoProjeto");
        String status = request.getParameter("optStatusProjeto");
        Long id = null;
        int quantidadeTarefa = 0;
        if (!operacao.equals("Incluir")) {
            id = Long.parseLong(request.getParameter("id"));
       
        }
          
        
        try {
          Projeto projeto = new Projeto(id, nome, descricao, status, quantidadeTarefa);
         
          
            if (operacao.trim().equals("Incluir")) {
                projeto.save();
               
            } else if (operacao.equals("Editar")) {
                projeto.setId(id);
                projeto.save();
            } else if (operacao.equals("Excluir")) {
                projeto.setId(id);
                projeto.remove();
            }
            RequestDispatcher view = request.getRequestDispatcher("ProjetoController?acao=Only");
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
            Logger.getLogger(ProjetoController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchMethodException ex) {
            Logger.getLogger(ProjetoController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProjetoController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProjetoController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchMethodException ex) {
            Logger.getLogger(ProjetoController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProjetoController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
