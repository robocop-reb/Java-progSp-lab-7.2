<%@ page import = "java.io.*,java.util.*,java.sql.*"%>

<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<html>

<head>

    <title>SELECT Operation</title>

</head>

<body>

<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.driver"

                   url = "jdbc:mysql://localhost:3306/labs?serverTimezone=UTC#"

                   user = "root" password = "pass123"/>

<sql:query dataSource = "${snapshot}" var = "result">

    SELECT * from Authors;

</sql:query>

<table border = "1" width = "100%">

    <tr>

        <th> ID</th>

        <th>Author_Name</th>

        <th>Book_title</th>

        <th>Book_code</th>

    </tr>

    <c:forEach var = "row" items = "${result.rows}">

        <tr>

            <td><c:out value = "${row.id}"/></td>

            <td><c:out value = "${row.Composer_Name}"/></td>

            <td><c:out value = "${row.song_title}"/></td>

            <td><c:out value = "${row.song_code}"/></td>

        </tr>

    </c:forEach>

</table>

</body>

</html>
