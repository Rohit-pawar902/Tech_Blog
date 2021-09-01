 
<%@page import="java.util.List"%>
<%@page import="com.tech.entities.Post"%>
<%@page import="com.tech.dao.PostDAO"%>
<%@page import="com.tech.helper.ConnectionProvider"%>
 
<%
  
             PostDAO pdao=new PostDAO(ConnectionProvider.getConnection());
             List<Post> l=pdao.getAllPost();
             
             %>
             <div class="row">
<%          for(int j=0;j<l.size();j++){
                 Post p=l.get(j);
                 %>
                 <div class="col-sm-6 mt-2">
                 <div class="card  w-100 h-100">
                     <img class="card-img card-img-top img-fluid rotated "src="images/<%=p.getPpics()%>">
                     <div class="card-body">
                         <h5 class="card-title"><%=p.getPtitle()%></h5>
                                <p class="card-text text-truncate"><%=p.getPcontent()%></p>
                     </div>
                     <div class="card-fotter text-center">
                         <a href="" id="post-edit" class="btn btn-outline-success invisible">Edit Post</a>
                         <a href="" class="btn btn-outline-success">Read More...</a>
                        
                     </div>
                 </div>
                 </div>
                    
   
         <% 
             }
             
           %>
             </div>
                 
 
  