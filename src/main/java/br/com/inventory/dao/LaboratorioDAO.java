package br.com.inventory.dao;

import br.com.inventory.modelo.Laboratorio;
import br.com.inventory.dao.JPAUtil;
import jakarta.persistence.EntityManager;
import java.util.List;

public class LaboratorioDAO {

    public void salvar(Laboratorio lab) {
        EntityManager em = JPAUtil.getEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(lab);
            em.getTransaction().commit();
        } catch (Exception e) {
            if (em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
            throw e;
        } finally {
            em.close();
        }
    }

    public List<Laboratorio> listarTodos() {
        EntityManager em = JPAUtil.getEntityManager();
        try {
            return em.createQuery("SELECT l FROM Laboratorio l", Laboratorio.class)
                     .getResultList();
        } finally {
            em.close();
        }
    }

    public Laboratorio buscarPorId(Long id) {
        EntityManager em = JPAUtil.getEntityManager();
        try {
            return em.find(Laboratorio.class, id);
        } finally {
            em.close();
        }
    }
}