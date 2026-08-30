package br.com.inventory.servlet;

import br.com.inventory.dao.EquipamentoDAO;
import br.com.inventory.dao.LaboratorioDAO;
import br.com.inventory.modelo.Equipamento;
import br.com.inventory.modelo.Laboratorio;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/equipamentos")
public class EquipamentoServlet extends HttpServlet {

    private EquipamentoDAO equipamentoDAO = new EquipamentoDAO();
    private LaboratorioDAO laboratorioDAO = new LaboratorioDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        // Se for chamada para tela de cadastro, busca os laboratórios para o <select>
        if ("novo".equals(action)) {
            List<Laboratorio> laboratorios = laboratorioDAO.listarTodos();
            req.setAttribute("laboratorios", laboratorios);
            req.getRequestDispatcher("/novo-equipamento.jsp").forward(req, resp);
            return;
        }

        // Caso padrão: listagem de todos os equipamentos
        List<Equipamento> equipamentos = equipamentoDAO.listarTodos();
        req.setAttribute("equipamentos", equipamentos);
        req.getRequestDispatcher("/equipamentos.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String numeroSerie = req.getParameter("numeroSerie");
        String tipo = req.getParameter("tipo");
        Long laboratorioId = Long.parseLong(req.getParameter("laboratorioId"));

        // Recupera a entidade completa pelo ID antes de associar ao Equipamento
        Laboratorio lab = laboratorioDAO.buscarPorId(laboratorioId);

        Equipamento equip = new Equipamento();
        equip.setNumeroSerie(numeroSerie);
        equip.setTipo(tipo);
        equip.setLaboratorio(lab);

        equipamentoDAO.salvar(equip);

        resp.sendRedirect(req.getContextPath() + "/equipamentos");
    }
}