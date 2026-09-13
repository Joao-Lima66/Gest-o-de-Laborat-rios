<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Equipamentos - Inventory-IT</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container my-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2>💻 Inventário de Equipamentos</h2>
        <div>
            <a href="${pageContext.request.contextPath}/laboratorios" class="btn btn-outline-secondary me-2">Ver Laboratórios</a>
            <a href="${pageContext.request.contextPath}/equipamentos?action=novo" class="btn btn-success">+ Novo Equipamento</a>
        </div>
    </div>

    <!-- Barra de Pesquisa e Tabela -->
    <div class="card shadow-sm">
        <div class="card-body">
            <div class="row mb-3">
                <div class="col-md-6">
                    <form action="${pageContext.request.contextPath}/equipamentos" method="get" class="d-flex gap-2">
                        <input type="text" name="busca" class="form-control" placeholder="Pesquisar por tipo ou nº de série..." value="${busca}">
                        <button type="submit" class="btn btn-outline-primary">Buscar</button>
                        <c:if test="${not empty busca}">
                            <a href="${pageContext.request.contextPath}/equipamentos" class="btn btn-outline-secondary">Limpar</a>
                        </c:if>
                    </form>
                </div>
            </div>

            <table class="table table-striped table-hover align-middle">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Nº de Série</th>
                        <th>Tipo</th>
                        <th>Laboratório Alocado</th>
                        <th class="text-end">Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${equipamentos}">
                        <tr>
                            <td>${item.id}</td>
                            <td>${item.numeroSerie}</td>
                            <td>${item.tipo}</td>
                            <td><span class="badge bg-primary fs-6">${item.laboratorio.nome}</span></td>
                            <td class="text-end">
                                <a href="${pageContext.request.contextPath}/equipamentos?action=excluir&id=${item.id}" 
                                   class="btn btn-danger btn-sm"
                                   onclick="return confirm('Deseja realmente excluir o equipamento ${item.tipo}?');">
                                   Excluir
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>