<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Novo Equipamento - Inventory-IT</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container my-5" style="max-width: 600px;">
    <div class="card shadow">
        <div class="card-header bg-primary text-white">
            <h4 class="mb-0">Cadastrar Novo Equipamento</h4>
        </div>
        <div class="card-body p-4">
            <form action="${pageContext.request.contextPath}/equipamentos" method="post" class="row g-3">
                
                <div class="col-12">
                    <label for="numeroSerie" class="form-label">Número de Série</label>
                    <input type="text" class="form-control" id="numeroSerie" name="numeroSerie" required placeholder="Ex: SN-882390">
                </div>

                <div class="col-12">
                    <label for="tipo" class="form-label">Tipo de Equipamento</label>
                    <input type="text" class="form-control" id="tipo" name="tipo" required placeholder="Ex: Switch, Roteador, Monitor">
                </div>

                <div class="col-12">
                    <label for="laboratorioId" class="form-label">Laboratório Alocado</label>
                    <select class="form-select" id="laboratorioId" name="laboratorioId" required>
                        <option value="" disabled selected>Selecione o Laboratório...</option>
                        <c:forEach var="lab" items="${laboratorios}">
                            <option value="${lab.id}">${lab.nome} (Bloco: ${lab.bloco})</option>
                        </c:forEach>
                    </select>
                </div>

                <div class="col-12 mt-4 d-flex justify-content-between">
                    <a href="${pageContext.request.contextPath}/equipamentos" class="btn btn-secondary">Voltar</a>
                    <button type="submit" class="btn btn-primary">Salvar Equipamento</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>