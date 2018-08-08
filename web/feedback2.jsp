<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.lang.*"%>




<!--<!DOCTYPE html>-->
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Superstore: About Us</title>
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
				 <p class="logo pull-left" id="superstore">REVIEWS</p>
				  <div id="menu" class="pull-right">
				  	<a href="./index.html" class="menuOptions">Home</a>
				  	<a href="./contact.html" class="menuOptions">Contact Us</a>
					<a href="./feedback.html" class="menuOptions">Feedback</a>
					<a href="./about.html" class="menuOptions">About Us</a>
				  </div>	
				 </div>
                            
			</section>
            
            
            
            
            
            <%
        
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
                    String f=" ",m=" ",l=" ",rev,name;
                    int r1, r2, r3, r4;
                    
                        while(rec)
                    {
                        f=rs.getString(1);
                        m=rs.getString(2);
                        l=rs.getString(3);
                        rev=rs.getString(4);
                        r1=rs.getInt(5);
                        r2=rs.getInt(6);
                        r3=rs.getInt(7);
                        r4=rs.getInt(8);
                        
                        
                        
                        if(m==null&&l==null)
                            name=f;
                        else if(l==null&&m!=null)
                            name=f.concat(" ").concat(m);
                        else
                        name= f.concat(" ").concat(m).concat(" ").concat(l);
                        
                        if(rev==null)
                            rev="No review";
                        
                        %>
                        
                        <div class="reviews">
                            
                            <p class="namerev">  
                               <%
                               out.println(name);
                               %>
                            </p>
                            <p class="rev">
                            <%
                               out.println(rev);
                            %>
                            </p>
                            <p>
                                <span class="rate">Ambience: </span>
                                <span class="rate2"><% out.println(r1);%></span>
                                <span class="rate">Service: </span>
                                <span class="rate2"><% out.println(r2);%></span>
                                <span class="rate">Cleanliness: </span>
                                <span class="rate2"><% out.println(r3);%></span>
                                <span class="rate">Stock: </span>
                                <span class="rate2"><% out.println(r4);%></span>
                            </p>
                        </div>
                        
                        
                        
                        
                        <%
                        
                        
                        rs.next();
                    
                    
                    }
                    

                } 
                catch (SQLException ex) {
//                Logger.getLogger(insert.class.getName()).log(Level.SEVERE, null, ex);
                }
                
                con.close();
    
    %>
    
</div>

    
    
                
    
		

</body>
</html>
