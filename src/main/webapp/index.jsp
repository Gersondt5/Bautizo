<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registro de Bautizo</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            text-align: center;
            padding: 50px;
            background-color: #f0f8ff;
            background-image: url('https://cdn.pixabay.com/photo/2017/02/01/20/28/balloons-2036430_960_720.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }

        /* Caja para el formulario */
        form {
            background-color: rgba(255, 255, 255, 0.9); /* Fondo blanco semi-transparente */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            display: inline-block;
            margin-top: 20px;
        }

        /* Campos del formulario */
        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: inset 0px 1px 5px rgba(0, 0, 0, 0.1);
        }

        /* Botón de registrar */
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        /* Cambia el color del botón al pasar el mouse */
        input[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Estilo de encabezado */
        h1 {
            color: #2c3e50;
            font-size: 36px;
            font-family: 'Comic Sans MS', cursive, sans-serif;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }

        p {
            color: #34495e;
            font-size: 18px;
        }

        /* Botón para ver inscritos */
        .btn-ver-inscritos {
            margin-top: 20px;
            background-color: #3498db;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        /* Cambiar el color del botón al pasar el mouse */
        .btn-ver-inscritos:hover {
            background-color: #2980b9;
        }

        .btn-ver-inscritos a {
            text-decoration: none;
            color: white;
        }

        /* Para dar más espacio entre el texto y los campos */
        label {
            font-weight: bold;
            font-size: 16px;
            color: #2c3e50;
        }

        /* Estilo para el contenedor principal */
        .container {
            background-color: rgba(255, 255, 255, 0.8); /* Fondo blanco semi-transparente */
            padding: 20px;
            border-radius: 10px;
            margin: 0 auto;
            max-width: 600px;
        }
    </style>
</head>
<body>
    <h1>Registro para el Bautizo Gerson Villanueva Ramirez</h1>

    <p>Fecha del Bautizo: 12 de octubre de 2024</p>
    <p>Lugar: Parroquia San Juan Bautista</p>

    <div class="container">
        <form action="InscripcionBautizoServelet" method="POST">
            <label for="nombre">Nombre:</label><br>
            <input type="text" id="nombre" name="nombre" required><br><br>

            <label for="email">Correo electrónico:</label><br>
            <input type="email" id="email" name="email" required><br><br>

            <label for="telefono">Teléfono:</label><br>
            <input type="text" id="telefono" name="telefono" required><br><br>

            <input type="submit" value="Registrar">
        </form>
</body>
</html>
