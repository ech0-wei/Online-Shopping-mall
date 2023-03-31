import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class UserCheck extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        doPost(req,res);

    }
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        if(req.getSession().getAttribute("name")!=null){
            System.out.println("wolailw");
            req.getRequestDispatcher("/WEB-INF/AboutUs.jsp").forward(req,res);
        }
        else{
            req.getRequestDispatcher("/index.jsp").forward(req,res);
        }
    }
}
