<%-- 
    Document   : Profile
    Created on : 18 Aug, 2020, 5:13:20 PM
    Author     : DELL
--%>

<%@page import="com.tech.entities.User"%>
<%    User n = (User) session.getAttribute("currentUser");
    if (n != null) {
%>



<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <%@include file="Admin_nav.jsp" %> 
        <%
//            RequestDispatcher req = request.getRequestDispatcher("Admin_nav.jsp");
//            req.include(request, response);

        %>
        
        <div class="container">
            <div class="row ">
                <div class="col-sm-3 row m-3 ">
                    
                    <div class="list-group shadow-lg" value="0" id="catagorie-list">
                        <div href="#" onClick class="list-group-item list-group-item-action active" name="CATID" value="0">all Catagories</div>
                        <%                PostDAO p = new PostDAO(ConnectionProvider.getConnection());
                            ArrayList<Catagorie> temp = p.getAllCatagorie();

                            for (Catagorie m : temp) {

                        %>
                        <div href="#" class="list-group-item " id="l1" name="CATID" value="<%=m.getCid()%>"> <%=m.getName()%>  </div>
                        <%
                            }
                        %>
                    </div>
                    <%
                        }
                    %>
                   
                </div>

                <div class="col-md-8 card-group">
 
                    <div class="container text-center " id="loader">
                        <i class="fa fa-refresh fa-4x fa-spin"></i>
                        <h2 class="mt-2">Loading...</h2>
                    </div>
                    <div class="container" id="show-post">


                            </div>
                      


                </div>
            </div> 
        </div> 
        <!--cdn script-->
        <script>
            $('document').ready(function() {
                $("#loader").hide();
                    $.ajax({
                        url: "ShowPost.jsp",
                        success: function(data, textStatus, jqXHR) {
                            $("#show-post").html(data);
                        }
                    });
                });
            
        </script>
        
    </body>
</html>
