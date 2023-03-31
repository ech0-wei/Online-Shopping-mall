import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

public class HelloServlet extends HttpServlet {
    HashMap<String,String> Database=new HashMap<>();
//
//
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
       doPost(req,res);

    }
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        req.setCharacterEncoding("utf-8");
        Database.put("User3","HereGrp3");
        Database.put("Manager","vip");
        String username= req.getParameter("name");
        System.out.println(username);
        String password=req.getParameter("password");
        System.out.println(password);
        String test=Database.get(username);
        System.out.println(test);
         if(password.equals(test)){
            res.setContentType("text/html;charset = utf-8");
            Cookie cookie = new Cookie("name", username);
            cookie.setMaxAge(60*60*24*7);
            res.addCookie(cookie);
            final HttpSession session=req.getSession();
             session.setAttribute("name",username);
            System.out.println("Success");
       req.getRequestDispatcher("/WEB-INF/Mainpage.jsp").forward(req,res);
         }
        else if(!password.equals(test)){
            res.setContentType("text/html;charset = utf-8");
             req.getRequestDispatcher("/WEB-INF/LoginFailure.jsp").forward(req,res);
         }
         }
    }





