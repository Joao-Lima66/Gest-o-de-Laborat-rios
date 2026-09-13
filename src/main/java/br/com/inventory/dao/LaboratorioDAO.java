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

    public void excluir(Long id) {
        EntityManager em = JPAUtil.getEntityManager();
        try {
            em.getTransaction().begin();
            Laboratorio lab = em.find(Laboratorio.class, id);
            if (lab != null) {
                em.remove(lab);
            }
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

    public List<Laboratorio> buscarPorNome(String termo) {
        EntityManager em = JPAUtil.getEntityManager();
        try {
            return em.createQuery("SELECT l FROM Laboratorio l WHERE LOWER(l.nome) LIKE LOWER(:termo)", Laboratorio.class)
                     .setParameter("termo", "%" + termo + "%")
                     .getResultList();
        } finally {
            em.close();
        }
    }
}