<%@ include file="/init.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<portlet:renderURL var="editUserURL">
	<portlet:param name="mvcPath" value="/edit_user.jsp" />
</portlet:renderURL>
<portlet:renderURL var="cancelURL">
	<portlet:param name="mvcPath" value="/view.jsp" />
</portlet:renderURL>
<p>view pan</p>
<aui:input type="text" name="panNumber" label="Pan Number"
	value="${panURL}" readonly="true" />
<a href="<%=editUserURL%>"><button>Edit Pan</button></a>
<a href="<%=cancelURL%>"><button>Cancel</button></a>
