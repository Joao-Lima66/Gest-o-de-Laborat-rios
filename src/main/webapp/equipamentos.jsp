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

    <div class="card shadow-sm">
        <div class="card-body">
            <table class="table table-striped table-hover align-middle">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Nº de Série</th>
                        <th>Tipo</th>
                        <th>Laboratório Alocado</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${equipamentos}">
                        <tr>
                            <td>${item.id}</td>
                            <td>${item.numeroSerie}</td>
                            <td>${item.tipo}</td>
                            <td><span class="badge bg-primary fs-6">${item.laboratorio.nome}</span></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>