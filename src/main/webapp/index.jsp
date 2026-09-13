<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventory-IT - Gestão de Ativos e Laboratórios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light d-flex flex-column min-vh-100">

    <!-- Navegação Superior -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold" href="${pageContext.request.contextPath}/index.jsp">
                📦 Inventory-IT
            </a>
            <div>
                <a href="${pageContext.request.contextPath}/laboratorios" class="btn btn-outline-light me-2">Laboratórios</a>
                <a href="${pageContext.request.contextPath}/equipamentos" class="btn btn-outline-light">Equipamentos</a>
            </div>
        </div>
    </nav>

    <!-- Conteúdo Principal / Hero Banner -->
    <main class="container my-auto py-5">
        <div class="row align-items-center justify-content-center text-center text-lg-start">
            <div class="col-lg-7 mb-4 mb-lg-0">
                <span class="badge bg-primary fs-6 mb-3 px-3 py-2 rounded-pill">Sistema de Gerenciamento</span>
                <h1 class="display-4 fw-bold text-dark mb-3">
                    Controle eficiente para seus <span class="text-primary">Laboratórios e Equipamentos</span>
                </h1>
                <p class="lead text-secondary mb-4">
                    O <strong>Inventory-IT</strong> é uma plataforma centralizada desenvolvida para simplificar a gestão de infraestrutura acadêmica e tecnológica. Organize salas, acompanhe alocações de hardware e mantenha o inventário atualizado em tempo real.
                </p>
                <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-lg-start">
                    <a href="${pageContext.request.contextPath}/laboratorios" class="btn btn-primary btn-lg px-4 gap-3 shadow">
                        🚀 Acessar Inventário
                    </a>
                    <a href="${pageContext.request.contextPath}/equipamentos" class="btn btn-outline-secondary btn-lg px-4">
                        Ver Equipamentos
                    </a>
                </div>
            </div>
            
            <!-- Card Ilustrativo de Destaques -->
            <div class="col-lg-5 col-md-8">
                <div class="card shadow-lg border-0 rounded-4 overflow-hidden">
                    <div class="card-body p-4 bg-white">
                        <h5 class="fw-bold mb-3 text-dark">Recursos da Plataforma</h5>
                        <ul class="list-unstyled mb-0">
                            <li class="d-flex align-items-center mb-3">
                                <div class="bg-primary text-white rounded-circle p-2 me-3 d-flex align-items-center justify-content-center" style="width: 36px; height: 36px;">🏢</div>
                                <div>
                                    <strong class="d-block text-dark">Gestão de Espaços</strong>
                                    <small class="text-muted">Cadastre e organize laboratórios por blocos.</small>
                                </div>
                            </li>
                            <li class="d-flex align-items-center mb-3">
                                <div class="bg-success text-white rounded-circle p-2 me-3 d-flex align-items-center justify-content-center" style="width: 36px; height: 36px;">💻</div>
                                <div>
                                    <strong class="d-block text-dark">Controle de Hardware</strong>
                                    <small class="text-muted">Vincule números de série aos ambientes.</small>
                                </div>
                            </li>
                            <li class="d-flex align-items-center">
                                <div class="bg-warning text-dark rounded-circle p-2 me-3 d-flex align-items-center justify-content-center" style="width: 36px; height: 36px;">🔍</div>
                                <div>
                                    <strong class="d-block text-dark">Busca e Filtros</strong>
                                    <small class="text-muted">Localize qualquer registro rapidamente.</small>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- Rodapé -->
    <footer class="bg-white border-top py-3 mt-auto">
        <div class="container text-center text-muted small">
            &copy; 2026 <strong>Inventory-IT</strong> — Todos os direitos reservados.
        </div>
    </footer>

</body>
</html>