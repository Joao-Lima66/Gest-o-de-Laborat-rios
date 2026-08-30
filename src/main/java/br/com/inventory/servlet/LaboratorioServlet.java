package br.com.inventory.servlet;

import br.com.inventory.dao.LaboratorioDAO;
import br.com.inventory.modelo.Laboratorio;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/laboratorios")
public class LaboratorioServlet extends HttpServlet {

    private LaboratorioDAO laboratorioDAO = new LaboratorioDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Laboratorio> lista = laboratorioDAO.listarTodos();
        req.setAttribute("laboratorios", lista);
        req.getRequestDispatcher("/laboratorios.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nome = req.getParameter("nome");
        String local = req.getParameter("local");

        Laboratorio lab = new Laboratorio();
        lab.setNome(nome);
        lab.setBloco(local);

        laboratorioDAO.salvar(lab);

        resp.sendRedirect(req.getContextPath() + "/laboratorios");
    }
}