<%@ page import="ua.goit.service.TopicService" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Index</title>

    <script type="application/javascript">
        function printHello(){
            var message = "<c:out value="${topics}"/>";
            console.log(message);
        }
    </script>

</head>
<body>


<c:out value="${topics}"/>
<button onclick="printHello()">Say hello</button>


<%@include file="templates/header.jsp" %>


<h1>Welcome to the index page!</h1>

<c:forEach items="${topics}" var="topic">
    ${topic},
</c:forEach>

<br/>
<br/>
${topics}
<br/>
<br/>

<br/>
<%=request.getAttribute("topics")%>
<%=request.getParameter("topics")%>


<br/>
<br/>
<%
    TopicService topicService = new TopicService();
    List<String> topics = topicService.getTopics();
    out.println(topics);
%>

<br/>
<%
    Random random = new Random();
    for(int i=0;i<100;i++){
        int r = random.nextInt(20);
        out.println(r);
    }
%>

<form action="article" method="post">
    <input type="text" title="topic" name="topic"/>
    <button type="submit" >Submit topic</button>
</form>

<form action="navigate" method="post">
    <input type="text" name="someImportantData"/>
    <input type="text" name="pageName"/>
    <button type="submit" >Submit data and navigate to different page</button>
</form>

<a href="page2.jsp">page2</a>


</body>
</html>
