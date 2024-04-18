<%-- 
    Document   : salvar_produtos
    Created on : 11 de abr de 2024, 10:53:25
    Author     : CT Desenvolvimento
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int codigo;
            String nome;
            String marca;
            double preco;
            codigo  = Integer.parseInt(request.getParameter("codigo"));
            nome    = request.getParameter("nome");
            marca   = request.getParameter("marca");
            preco   = Double.parseDouble(request.getParameter("preco"));
            
            try{
            // Fazendo a conexão com o banco de dados
            Connection conecta;
            PreparedStatement st;
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            String url      = "jdbc:mysql://localhost:3306/bancojsp";
            String user     = "root";
            String password = "";
            conecta         = DriverManager.getConnection(url,user,password);
            
            // Insere os dados do produto no banco de dados aberto
            String sql = ("INSERT INTO produto VALUES (?,?,?,?)");
            st = conecta.prepareStatement(sql);
            st.setInt(1, codigo);       // Indica o que será inserido no primeiro input
            st.setString(2, nome);
            st.setString(3, marca);
            st.setDouble(4, preco);
            st.executeUpdate();         // Executa o comando INSERT
            out.print("<p><strong>Produto cadastrado com sucesso!</strong></p>");
            }catch(Exception err){
                out.print("Mensagem de erro: " + err.getMessage());
            }
        %>
    </body>
</html>
