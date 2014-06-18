package Controllers;

import logic.Expert;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

/**
 * Created by Marion on 6/18/2014.
 */
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
        List result = expert.getList();
        PrintWriter out = resp.getWriter();
        Iterator it = result.iterator();
        while(it.hasNext())
        {
            out.println("<html>" +"<body>"+"Hello Marion"+ " "+it.next() +"</body>"+"</html>");
        }


    }
}
