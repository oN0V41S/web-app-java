<%-- 
    Document   : salvar_produtos
    Created on : 11 de abr. de 2024, 10:53:53
    Author     : CT Desenvolvimento
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <-- "<%" é usado para inserir códigos java em HTML -->
        <%
            int codigo;
            String nome;
            String marca;
            String marca;
            codigo = Integer.parseInt(request.getParameter("codigo"));
            nome = request.getParameter("nome");
            preco = Double.parseDouble(request.getParameter("preco"));
        %>
    </body>
</html>
