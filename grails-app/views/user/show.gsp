
<%@ page import="com.lajiaowawa.domain.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.nickname}">
				<li class="fieldcontain">
					<span id="nickname-label" class="property-label"><g:message code="user.nickname.label" default="Nickname" /></span>
					
						<span class="property-value" aria-labelledby="nickname-label"><g:fieldValue bean="${userInstance}" field="nickname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.avatar}">
				<li class="fieldcontain">
					<span id="avatar-label" class="property-label"><g:message code="user.avatar.label" default="Avatar" /></span>
					
						<span class="property-value" aria-labelledby="avatar-label"><g:fieldValue bean="${userInstance}" field="avatar"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.birthday}">
				<li class="fieldcontain">
					<span id="birthday-label" class="property-label"><g:message code="user.birthday.label" default="Birthday" /></span>
					
						<span class="property-value" aria-labelledby="birthday-label"><g:fieldValue bean="${userInstance}" field="birthday"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.phoneNum}">
				<li class="fieldcontain">
					<span id="phoneNum-label" class="property-label"><g:message code="user.phoneNum.label" default="Phone Num" /></span>
					
						<span class="property-value" aria-labelledby="phoneNum-label"><g:fieldValue bean="${userInstance}" field="phoneNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.mailAds}">
				<li class="fieldcontain">
					<span id="mailAds-label" class="property-label"><g:message code="user.mailAds.label" default="Mail Ads" /></span>
					
						<span class="property-value" aria-labelledby="mailAds-label"><g:fieldValue bean="${userInstance}" field="mailAds"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.intro}">
				<li class="fieldcontain">
					<span id="intro-label" class="property-label"><g:message code="user.intro.label" default="Intro" /></span>
					
						<span class="property-value" aria-labelledby="intro-label"><g:fieldValue bean="${userInstance}" field="intro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.funLabel}">
				<li class="fieldcontain">
					<span id="funLabel-label" class="property-label"><g:message code="user.funLabel.label" default="Fun Label" /></span>
					
						<span class="property-value" aria-labelledby="funLabel-label"><g:fieldValue bean="${userInstance}" field="funLabel"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${userInstance?.id}" />
					<g:link class="edit" action="edit" id="${userInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
