<html>
<body>
<h2>Hello World!</h2>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

 <c:set var="x" value="5" />
 <h4> The value of x is: <c:out value="${x}" /> </h4>
 <%
     double num = Math.random();
     if (num > 0.95) {
   %>
       <h2>You'll have a luck day!</h2><p>(<%= num %>)</p>
   <%
     } else {
   %>
       <h2>Well, life goes on ... </h2><p>(<%= num %>)</p>
   <%
     }
   %>
   <a href="<%= request.getRequestURI() %>"><h3>Try Again</h3></a>

   <h3>Choose an author:</h3>
     <form method="get">
       <input type="checkbox" name="author" value="Tan Ah Teck">Tan
       <input type="checkbox" name="author" value="Mohd Ali">Ali
       <input type="checkbox" name="author" value="Kumar">Kumar
       <input type="submit" value="Query">
     </form>

     <%
     String[] authors = request.getParameterValues("author");
     if (authors != null) {
     %>
       <h3>You have selected author(s):</h3>
       <ul>
     <%
         for (int i = 0; i < authors.length; ++i) {
     %>
           <li><%= authors[i] %></li>
     <%
         }
     %>
       </ul>
       <a href="<%= request.getRequestURI() %>">BACK</a>
     <%
     }
     %>

</body>
</html>
