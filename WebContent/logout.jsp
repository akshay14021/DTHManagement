<%
    HttpSession mysess=request.getSession(true);
    mysess.removeAttribute("username");
    response.sendRedirect("index.jsp");
%>