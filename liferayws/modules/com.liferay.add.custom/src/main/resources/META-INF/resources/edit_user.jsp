<%@ include file="/init.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<p>edit pan</p>
<portlet:actionURL name="addPanNumber" var="addPanNumberURL" />
<aui:form action="<%=addPanNumberURL%>" name="panCardAddition">
	<aui:input type="text" name="panNumber" label="Pan Number" value="${panURL}"/>
		<aui:button-row>
		<aui:button name="submitButton" type="submit" value="Submit" />
	</aui:button-row>
</aui:form>

