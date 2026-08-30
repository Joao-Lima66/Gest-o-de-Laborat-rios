# Inventory-IT - Sistema de Gestão de Ativos e Laboratórios

Aplicação Web desenvolvida em Java para controle de inventário e alocação de equipamentos em laboratórios de informática, utilizando arquitetura MVC, Jakarta Servlets, JSP e persistência com JPA/Hibernate.

---

## Tecnologias e Ferramentas Utilizadas
- Linguagem: Java 21+ / OpenJDK
- Servidor de Aplicação: Apache Tomcat 11.0 (Jakarta EE 10)
- Persistência / ORM: JPA 3.2 / Hibernate ORM
- Banco de Dados: H2 Database (In-Memory)
- Camada Web: Jakarta Servlets 6.0, Jakarta Server Pages (JSP), JSTL
- Interface e Estilização: HTML5, CSS3, Bootstrap 5

---

## Arquitetura e Estrutura do Projeto

O sistema adota o padrão arquitetural MVC (Model-View-Controller) com separação rigorosa de camadas e responsabilidades:

- Camada de Modelo (modelo): Entidades JPA Laboratorio e Equipamento com mapeamento relacional @ManyToOne.
- Camada de Acesso a Dados (dao): LaboratorioDAO e EquipamentoDAO com controle transacional e consultas JPQL com JOIN FETCH.
- Camada de Controle (servlet): LaboratorioServlet e EquipamentoServlet gerenciando as requisições HTTP (GET e POST).
- Camada de Visão (webapp / JSP): Páginas dinâmicas com JSTL e formulário estilizado com Bootstrap 5.

---

## Como Executar o Projeto

1. Importe o projeto no Eclipse IDE for Enterprise Java and Web Developers.
2. Certifique-se de associar o Apache Tomcat v11.0 no Targeted Runtimes.
3. Execute a aplicação via Run As > Run on Server.
4. Acesse: http://localhost:8080/inventory-it/laboratorios