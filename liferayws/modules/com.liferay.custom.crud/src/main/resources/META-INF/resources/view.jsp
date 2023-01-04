<%@page import="com.liferay.portal.kernel.model.User"%>
<%@page import="com.liferay.portal.kernel.util.ListUtil"%>
<%@page import="com.liferay.portal.kernel.service.UserLocalServiceUtil"%>
<%@page import="java.util.List"%>
<%@ include file="/init.jsp" %>

			<%List<User> userList=UserLocalServiceUtil.getUsers(-1, -1); %>			
				<liferay-ui:search-container total="<%=userList.size() %>" var="searchContainer" delta="10" deltaConfigurable="true" emptyResultsMessage="Oops. There Are No users To Display, Please add Users">
					<liferay-ui:search-container-results results="<%=ListUtil.subList(userList, searchContainer.getStart(),searchContainer.getEnd())%>" />
						<liferay-ui:search-container-row className="com.liferay.portal.kernel.model.User" modelVar="user" keyProperty="userId">
							<%long userIdd=user.getUserId();
							String userId=String.valueOf(userIdd);
							String panNumber=String.valueOf(UserLocalServiceUtil.getUser(userIdd).getExpandoBridge().getAttribute("Pan Number"));
%>
							<liferay-ui:search-container-column-text name="User ID" property="userId"/>
							<liferay-ui:search-container-column-text name="">
							</liferay-ui:search-container-column-text>
							<liferay-ui:search-container-column-text name="User Name" property="fullName" />
							
<%-- 							<portlet:renderURL var="editUserURL">
								<portlet:param name="userId" value="<%=userId%>"/>
								<portlet:param name="mvcPath" value="/edit_user.jsp"/>
							</portlet:renderURL>
							
							<portlet:renderURL var="viewUserURL">
								<portlet:param name="userId" value="<%=userId%>"/>
								<portlet:param name="mvcPath" value="/view_user.jsp"/>
							</portlet:renderURL>
				
							<portlet:actionURL name="deleteUser" var="deleteUserURL">
								<portlet:param name="userId" value="<%=userId%>"/>
							</portlet:actionURL> --%>
							
						<liferay-ui:search-container-column-text>
							<liferay-ui:icon-menu direction="left-side" markupView="lexicon" showWhenSingleIcon="<%= true %>">
								<liferay-ui:icon message="Edit" />
								<liferay-ui:icon message="View" />
								<liferay-ui:icon message="Delete" />
								
							</liferay-ui:icon-menu>
						</liferay-ui:search-container-column-text>
						</liferay-ui:search-container-row>
					<liferay-ui:search-iterator markupView="lexicon"/>
				</liferay-ui:search-container>