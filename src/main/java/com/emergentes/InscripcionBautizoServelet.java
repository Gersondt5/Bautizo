
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "InscripcionBautizoServelet", urlPatterns = {"/InscripcionBautizoServelet"})
public class InscripcionBautizoServelet extends HttpServlet {
    private static List<Inscripcion> inscritos = new ArrayList<>();



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          // Recoger los datos del formulario
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");

        // Crear un nuevo objeto de inscripción
        Inscripcion nuevoInscrito = new Inscripcion(nombre, email, telefono);
        inscritos.add(nuevoInscrito); // Añadirlo a la lista

        // Redirigir a la página de confirmación
        response.sendRedirect("confirmacion.jsp");
    }

    // Método para obtener los inscritos
    public static List<Inscripcion> getInscritos() {
        return inscritos;

    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}


