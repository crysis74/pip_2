import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ControllerServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String xString = request.getParameter("x_imput");
        String yString = request.getParameter("y_imput");
        String RString = request.getParameter("r_imput");
        response.setHeader("Content-Type", "text/html; charset=UTF-8");
        if(xString == null || yString == null || RString == null){
            request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        } else {
            request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

}
