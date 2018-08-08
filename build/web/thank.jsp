<%@page import="java.util.StringTokenizer"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.lang.*"%>

<%!
enum grade
{
               Dismal, Poor, Average, Good, Excellent;
}
%>

<!--<!DOCTYPE html>-->
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Thank You</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
		<link href="themes/css/bootstrappage.css" rel="stylesheet"/>
		<link href="themes/css/flexslider.css" rel="stylesheet"/>
		<link href="themes/css/main.css" rel="stylesheet"/>
		<link href="themes/css/over.css" rel="stylesheet"/>

</head>
<body>


	<div id="wrapper" class="container">
			<section class="navbar main-menu" id="navbar">
				<div class="navbar-inner main-menu">
				 <p class="logo pull-left" id="superstore">FEEDBACK</p>
				  <div id="menu" class="pull-right">
				  	<a href="./index.html" class="menuOptions">Home</a>
				  	<a href="./contact.html" class="menuOptions">Contact Us</a>
					<a href="./feedback.html" class="menuOptions">Feedback</a>
					<a href="./about.html" class="menuOptions">About Us</a>
				  </div>	
				 </div>
			</section>	

			<img src="themes/images/ladies/100.jpeg" alt="" align="center" id="img100">
                        
			<p id="thank"> Thank You! Your Feedback Has Been Recorded</p>
</div>

		<div id="reviews">
			
		</div>
    
    
                <%
        
                    
                  
    Connection con = null;
    
            try {
                Class.forName("oracle.jdbc.OracleDriver");
                 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","jyothy","jyothy");
                
                }        
            catch (ClassNotFoundException a){
                
            }
            catch(SQLException ex) {

                }
            
            try {
                    Statement st = con.createStatement();
                    
                    String name=request.getParameter("name");
                    String com=request.getParameter("body");
                    String r1=request.getParameter("ambience");
                    String r2=request.getParameter("service");
                    String r3= request.getParameter("clean");
                    String r4= request.getParameter("stock");
                    
                      int v1, v2, v3, v4;
                      String f="", m="", l="";
                
                      v1= grade.valueOf(r1).ordinal()+1;
                      v2= grade.valueOf(r2).ordinal()+1;
                      v3= grade.valueOf(r3).ordinal()+1;
                      v4= grade.valueOf(r4).ordinal()+1;
                      
                    StringTokenizer srt = new StringTokenizer(name," ");
                    
                    f=srt.nextToken();
                    if(f!="")
                        f=f.substring(0, 1).toUpperCase().concat(f.substring(1));
                    
                    if(srt.hasMoreTokens())
                    {
                        m=srt.nextToken();
                    
                    if(m!="")
                        m=m.substring(0, 1).toUpperCase().concat(m.substring(1));
                    }
                    
                    if(srt.hasMoreTokens())
                    {
                    l=srt.nextToken();
                    if(l!="")
                        l=l.substring(0, 1).toUpperCase().concat(l.substring(1));
                    }
                    
                    String query;
                    query="insert into review(FNAME,MNAME,LNAME,REV,R1,R2,R3,R4) values('"+f+"', '"+m+"', '"+l+"', '"+com+"', "+v1+", "+v2+","+ v3+", "+v4+")";
                    st.executeQuery(query);

                    
                    
                    
                    }
                    catch(SQLException ex) 
                    {

                    }
            
                    con.close();
            

                        
    %>

</body>
</html>
