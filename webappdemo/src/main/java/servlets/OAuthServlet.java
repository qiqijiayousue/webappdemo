package servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by miaoxi.zj on 14-2-18.
 */
public class OAuthServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String textcontenStr;
        //response.setContentType("text/html");
        textcontenStr = request.getParameter("textcontent");
        PrintWriter pw = response.getWriter();
        pw.println("text content:"+textcontenStr);


    }
}

