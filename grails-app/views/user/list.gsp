
<%@ page import="com.lajiaowawa.domain.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-user" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nickname" title="${message(code: 'user.nickname.label', default: 'Nickname')}" />
					
						<g:sortableColumn property="avatar" title="${message(code: 'user.avatar.label', default: 'Avatar')}" />
					
						<g:sortableColumn property="birthday" title="${message(code: 'user.birthday.label', default: 'Birthday')}" />
					
						<g:sortableColumn property="phoneNum" title="${message(code: 'user.phoneNum.label', default: 'Phone Num')}" />
					
						<g:sortableColumn property="mailAds" title="${message(code: 'user.mailAds.label', default: 'Mail Ads')}" />
					
						<g:sortableColumn property="intro" title="${message(code: 'user.intro.label', default: 'Intro')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "nickname")}</g:link></td>
					
						<td>${fieldValue(bean: userInstance, field: "avatar")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "birthday")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "phoneNum")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "mailAds")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "intro")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
