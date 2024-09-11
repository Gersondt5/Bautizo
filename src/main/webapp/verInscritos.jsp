<%@ page import="java.util.List" %>
<%@ page import="com.emergentes.InscripcionBautizoServelet" %>
<%@ page import="com.emergentes.Inscripcion" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Inscritos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
            background-color: #f0f8ff;
        }
        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 80%;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
    <h1>Lista de Inscritos al Bautizo</h1>
    <table>
        <tr>
            <th>Nombre</th>
            <th>Email</th>
            <th>Teléfono</th>
        </tr>

        <%
            // Obtener la lista de inscritos desde el servlet
            List<Inscripcion> inscritos = InscripcionBautizoServelet.getInscritos();
            for (Inscripcion inscrito : inscritos) {
        %>
        <tr>
            <td><%= inscrito.getNombre() %></td>
            <td><%= inscrito.getEmail() %></td>
            <td><%= inscrito.getTelefono() %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>