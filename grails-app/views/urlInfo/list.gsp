
<%@ page import="com.lajiaowawa.domain.UrlInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'urlInfo.label', default: 'UrlInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-urlInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-urlInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'urlInfo.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="catTag" title="${message(code: 'urlInfo.catTag.label', default: 'Cat Tag')}" />
					
						<g:sortableColumn property="area" title="${message(code: 'urlInfo.area.label', default: 'Area')}" />
					
						<g:sortableColumn property="createTime" title="${message(code: 'urlInfo.createTime.label', default: 'Create Time')}" />
					
						<g:sortableColumn property="modifyTime" title="${message(code: 'urlInfo.modifyTime.label', default: 'Modify Time')}" />
					
						<g:sortableColumn property="shortCutSnap" title="${message(code: 'urlInfo.shortCutSnap.label', default: 'Short Cut Snap')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${urlInfoInstanceList}" status="i" var="urlInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${urlInfoInstance.id}">${fieldValue(bean: urlInfoInstance, field: "address")}</g:link></td>
					
						<td>${fieldValue(bean: urlInfoInstance, field: "catTag")}</td>
					
						<td>${fieldValue(bean: urlInfoInstance, field: "area")}</td>
					
						<td>${fieldValue(bean: urlInfoInstance, field: "createTime")}</td>
					
						<td>${fieldValue(bean: urlInfoInstance, field: "modifyTime")}</td>
					
						<td>${fieldValue(bean: urlInfoInstance, field: "shortCutSnap")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${urlInfoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
