/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import clases.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author LAB704-00
 */
@WebServlet(name = "ClientesListarServlet", urlPatterns = {"/ClientesListarServlet"})
public class ClientesListarServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Cliente c1 = new Cliente();
        c1.setCodigo(11);
        c1.setNombres("David");
        c1.setPaterno("Rodriguez");
        c1.setMaterno("Condezo");

        Cliente c2 = new Cliente();
        c2.setCodigo(12);
        c2.setNombres("Juan");
        c2.setPaterno("Perez");
        c2.setMaterno("Quispe");

        ArrayList<Cliente> clientes = new ArrayList<Cliente>();
        clientes.add(c1);
        clientes.add(c2);

        // Guardando datos en el scope REQUEST
        request.setAttribute("CLIENTES_REGISTRADOS", clientes);

        // Guardando datos en el scope SESSION
        HttpSession session = request.getSession();
        session.setAttribute("CLIENTES_VIP", clientes);

        RequestDispatcher rd = request
                .getRequestDispatcher("WEB-INF/clientes_listado.jsp");
        rd.forward(request, response);

    }
}
