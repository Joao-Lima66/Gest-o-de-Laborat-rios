<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Laboratórios - Inventory-IT</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container my-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2>🏢 Gestão de Laboratórios</h2>
        <a href="${pageContext.request.contextPath}/equipamentos" class="btn btn-outline-secondary">Ir para Equipamentos</a>
    </div>

    <div class="card mb-4 shadow-sm">
        <div class="card-header bg-primary text-white">Cadastrar Laboratório</div>
        <div class="card-body">
            <form action="${pageContext.request.contextPath}/laboratorios" method="post" class="row g-3">
                <div class="col-md-6">
                    <label class="form-label">Nome do Laboratório</label>
                    <input type="text" name="nome" class="form-control" required placeholder="Ex: Laboratório de Informática 01">
                </div>
                <div class="col-md-4">
                    <label class="form-label">Localização</label>
                    <input type="text" name="local" class="form-control" required placeholder="Ex: Bloco A - 1º Andar">
                </div>
                <div class="col-md-2 d-flex align-items-end">
                    <button type="submit" class="btn btn-primary w-100">Salvar</button>
                </div>
            </form>
        </div>
    </div>

    <div class="card shadow-sm">
        <div class="card-body">
            <table class="table table-striped table-hover align-middle">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Bloco</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${laboratorios}">
                        <tr>
                            <td>${item.id}</td>
                            <td>${item.nome}</td>
                            <td>${item.bloco}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>