<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
  <title style="{
      margin-left:auto;
      margin-right:auto;
    }">User Page</title>

  <style type="text/css">

html{
  width: 900px;
}
    .tg {
      border-collapse: collapse;
      border-spacing: 0;
      border-color: #ccc;
      float: left; /* Обтекание по правому краю */
      width: 500px;
      margin-top: 30px;
    }

    .tg td {
      font-family: Arial, sans-serif;
      font-size: 14px;
      padding: 10px 5px;
      border-style: solid;
      border-width: 1px;
      overflow: hidden;
      word-break: normal;
      border-color: #ccc;
      color: #333;
      background-color: #fff;
    }

    .tg th {
      font-family: Arial, sans-serif;
      font-size: 14px;
      font-weight: normal;
      padding: 10px 5px;
      border-style: solid;
      border-width: 1px;
      overflow: hidden;
      word-break: normal;
      border-color: #ccc;
      color: #333;
      background-color: #f0f0f0;

    }
.add{
  margin-left: 30px;
  width: 300px;
  float: left;

}
    .tg .tg-4eph {
      background-color: #f9f9f9
    }
  </style>
</head>
<body>
<a href="../../index.jsp">Back to main menu</a>
<br/>
<br/>
<a href="<c:url value="/search"/>" target="_blank">Search users</a>

<br/>

<br/>
<h1>Find User</h1>
<c:url var="search" value="search"/>
<form:form action="${search}" commandName="searchString">
  <table>
    <tr>
      <td>
        <jsp:text>Enter name: </jsp:text>
      </td>
      <td>
        <form:input path="searchName"/>
      </td>
      <td>
        <input type="submit" value="<spring:message text="Find user"/>"/>
      </td>
    </tr>
  </table>
</form:form>
<h1>User List</h1>


<c:if test="${!empty listUsers}">
  <display:table id="user" class="tg" name="listUsers" requestURI="/users" pagesize="10" >
    <display:column class="th" property="id" title="ID" />
    <display:column class="th" property="name" title="Name" />
    <display:column class="th" property="age" title="Age" />
    <display:column class="th" property="isAdmin" title="is Admin"/>
    <display:column class="th" property="createdDate" title="createdDate"/>
    <display:column class="td" title="Edit" >
      <a href="<c:url value='/edit/${user.id}'/>">Edit</a>

    </display:column>

    <display:column class="th"  title="Delete" >
      <a href="<c:url value='/remove/${user.id}'/>">Delete</a>
    </display:column>
  </display:table>
</c:if>






<div class="add">
<h1>Here you can add or edit a User</h1>

<c:url var="addAction" value="/users/add"/>

<form:form action="${addAction}" commandName="user">
  <table>
    <c:if test="${!empty user.name}">
      <tr>
        <td>
          <form:label path="id">
            <spring:message text="ID"/>
          </form:label>
        </td>
        <td>
          <form:input path="id" readonly="true" size="8" disabled="true"/>
          <form:hidden path="id"/>
        </td>
      </tr>
    </c:if>
    <tr>
      <td>
        <form:label path="name">
          <spring:message text="Name"/>
        </form:label>
      </td>
      <td>
        <form:input path="name" />
      </td>
    </tr>
    <tr>
      <td>
        <form:label path="age">
          <spring:message text="Age"/>
        </form:label>
      </td>
      <td >
        <form:input path="age"/>
      </td>
    </tr>
    <tr>
      <td>
        <form:label path="isAdmin">
          <spring:message text="is Admin"/>
        </form:label>
      </td>
      <td >
        <form:checkbox  path="isAdmin" value="isAdmin"/>
      </td>
    </tr>

    <tr>
      <td colspan="2">


          <input type="submit"
                 value="<spring:message text="Send"/>"/>


      </td>
    </tr>
  </table>
</form:form>
</div>
</body>
</html>