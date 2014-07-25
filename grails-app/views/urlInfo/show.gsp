
<%@ page import="com.lajiaowawa.domain.UrlInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'urlInfo.label', default: 'UrlInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-urlInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-urlInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list urlInfo">
			
				<g:if test="${urlInfoInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="urlInfo.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${urlInfoInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${urlInfoInstance?.catTag}">
				<li class="fieldcontain">
					<span id="catTag-label" class="property-label"><g:message code="urlInfo.catTag.label" default="Cat Tag" /></span>
					
						<span class="property-value" aria-labelledby="catTag-label"><g:fieldValue bean="${urlInfoInstance}" field="catTag"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${urlInfoInstance?.area}">
				<li class="fieldcontain">
					<span id="area-label" class="property-label"><g:message code="urlInfo.area.label" default="Area" /></span>
					
						<span class="property-value" aria-labelledby="area-label"><g:fieldValue bean="${urlInfoInstance}" field="area"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${urlInfoInstance?.createTime}">
				<li class="fieldcontain">
					<span id="createTime-label" class="property-label"><g:message code="urlInfo.createTime.label" default="Create Time" /></span>
					
						<span class="property-value" aria-labelledby="createTime-label"><g:fieldValue bean="${urlInfoInstance}" field="createTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${urlInfoInstance?.modifyTime}">
				<li class="fieldcontain">
					<span id="modifyTime-label" class="property-label"><g:message code="urlInfo.modifyTime.label" default="Modify Time" /></span>
					
						<span class="property-value" aria-labelledby="modifyTime-label"><g:fieldValue bean="${urlInfoInstance}" field="modifyTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${urlInfoInstance?.shortCutSnap}">
				<li class="fieldcontain">
					<span id="shortCutSnap-label" class="property-label"><g:message code="urlInfo.shortCutSnap.label" default="Short Cut Snap" /></span>
					
						<span class="property-value" aria-labelledby="shortCutSnap-label"><g:fieldValue bean="${urlInfoInstance}" field="shortCutSnap"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${urlInfoInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="urlInfo.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:link controller="user" action="show" id="${urlInfoInstance?.owner?.id}">${urlInfoInstance?.owner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${urlInfoInstance?.standardUrl}">
				<li class="fieldcontain">
					<span id="standardUrl-label" class="property-label"><g:message code="urlInfo.standardUrl.label" default="Standard Url" /></span>
					
						<span class="property-value" aria-labelledby="standardUrl-label"><g:link controller="urlLib" action="show" id="${urlInfoInstance?.standardUrl?.id}">${urlInfoInstance?.standardUrl?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${urlInfoInstance?.id}" />
					<g:link class="edit" action="edit" id="${urlInfoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
