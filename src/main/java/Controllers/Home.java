package Controllers;

import logic.Expert;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class Home extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

   resp.setContentType("text/html");
        String k = req.getParameter("color");
     PrintWriter out = resp.getWriter();
        out.println("<html>" +"<body>"+"Hello Marion"+ k+"</body>"+"</html>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        String k = req.getParameter("color");
        Expert expert = new Expert();
      expert.setInventory(k);

        PrintWriter out = resp.getWriter();
        out.append("<html><body>"+"You selected:"+" "+expert.myResponse()+" "+"</body></html>");



    }
}
