<%-- 
    Document   : listapro
    Created on : 18 de abr. de 2024, 10:13:02
    Author     : Rafael Novais
--%>

<%-- Importando Pacotes --%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de Produtos</title>
    </head>
    <body>
        <%
            // Fazendo Conexão com Banco
            Connection conexao;
            PreparedStatement pst;
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            String url      = "jdbc:mysql://localhost:3306/bancojsp";
            String user     = "root";
            String password = "";
            conexao         = DriverManager.getConnection(url,user,password);
            
            // Instrução SQL
            String sql = "SELECT * FROM produto";
            pst = conexao.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
        %>
        
        <table border="i">
            <tr>
                <th>Código</th>
                <th>Nome</th>
                <th>Marca</th>
                <th>Preço</th>                
            </tr>
            <%
                while(rs.next()){
            %>
            
            <tr>
                <th>
                    <%= rs.getString("codigo") %>
                </th>
                <th>
                    <%= rs.getString("nome") %>
                </th>
                <th>
                    <%= rs.getString("marca") %>
                </th>
                <th>
                    <%= rs.getString("preco") %>
                </th>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
