package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.logging.Logger;
import java.util.logging.Level;
import java.sql.*;
import java.io.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.lang.*;

public final class feedback2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--<!DOCTYPE html>-->\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<meta charset=\"utf-8\">\r\n");
      out.write("\t\t<title>Superstore: About Us</title>\r\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("\t\t<meta name=\"description\" content=\"\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">      \r\n");
      out.write("\t\t<link href=\"bootstrap/css/bootstrap-responsive.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\t\t<link href=\"themes/css/bootstrappage.css\" rel=\"stylesheet\"/>\r\n");
      out.write("\t\t<link href=\"themes/css/flexslider.css\" rel=\"stylesheet\"/>\r\n");
      out.write("\t\t<link href=\"themes/css/main.css\" rel=\"stylesheet\"/>\r\n");
      out.write("\t\t<link href=\"themes/css/over.css\" rel=\"stylesheet\"/>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"wrapper\" class=\"container\">\r\n");
      out.write("\t\t\t<section class=\"navbar main-menu\" id=\"navbar\">\r\n");
      out.write("\t\t\t\t<div class=\"navbar-inner main-menu\">\r\n");
      out.write("\t\t\t\t <p class=\"logo pull-left\" id=\"superstore\">REVIEWS</p>\r\n");
      out.write("\t\t\t\t  <div id=\"menu\" class=\"pull-right\">\r\n");
      out.write("\t\t\t\t  \t<a href=\"./index.html\" class=\"menuOptions\">Home</a>\r\n");
      out.write("\t\t\t\t  \t<a href=\"./contact.html\" class=\"menuOptions\">Contact Us</a>\r\n");
      out.write("\t\t\t\t\t<a href=\"./feedback.html\" class=\"menuOptions\">Feedback</a>\r\n");
      out.write("\t\t\t\t\t<a href=\"./about.html\" class=\"menuOptions\">About Us</a>\r\n");
      out.write("\t\t\t\t  </div>\t\r\n");
      out.write("\t\t\t\t </div>\r\n");
      out.write("                            \r\n");
      out.write("\t\t\t</section>\r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            ");

        
    Connection con = null;
    ResultSet rs;
            try {
                Class.forName("oracle.jdbc.OracleDriver");
                 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","jyothy","jyothy");
                
                }        
            catch (ClassNotFoundException a){
                
            }
            catch(SQLException ex) {
//                Logger.getLogger(insert.class.getName()).log(Level.SEVERE, null, ex);
                }
            
            try {
                    Statement st = con.createStatement();
                
//                st.executeQuery("insert into STUDENT(NAME,PASS) values('"+request.getParameter("Name")+"','"+request.getParameter("Password")+"')");
                    rs=st.executeQuery("select * from review");
//                out.println("POOP");
                    boolean rec = rs.next();
                    String f,m,l,rev,name;
                    
                        while(rec)
                    {
                        f=rs.getString(1);
                        m=rs.getString(2);
                        l=rs.getString(3);
                        rev=rs.getString(4);
                        
                        name= f.concat(" ").concat(m).concat(" ").concat(l);
                        
      out.write("\r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"reviews\">\r\n");
      out.write("                            \r\n");
      out.write("                            <p class=\"namerev\">  \r\n");
      out.write("                               ");

                               out.println(name);
                               
      out.write("\r\n");
      out.write("                            </p>\r\n");
      out.write("                            <p class=\"rev\">\r\n");
      out.write("                            ");

                               out.println(rev);
                            
      out.write("\r\n");
      out.write("                            </p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        ");

                        
                        
                        rs.next();
                    
                    
                    }
                    

                } 
                catch (SQLException ex) {
//                Logger.getLogger(insert.class.getName()).log(Level.SEVERE, null, ex);
                }
    
    
      out.write("\r\n");
      out.write("    \r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("                \r\n");
      out.write("    \r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
