<%@ page import="com.lajiaowawa.domain.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nickname', 'error')} required">
	<label for="nickname">
		<g:message code="user.nickname.label" default="Nickname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nickname" required="" value="${userInstance?.nickname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'avatar', 'error')} ">
	<label for="avatar">
		<g:message code="user.avatar.label" default="Avatar" />
		
	</label>
	<g:textField name="avatar" value="${userInstance?.avatar}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'birthday', 'error')} required">
	<label for="birthday">
		<g:message code="user.birthday.label" default="Birthday" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="birthday" type="number" value="${userInstance.birthday}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'phoneNum', 'error')} required">
	<label for="phoneNum">
		<g:message code="user.phoneNum.label" default="Phone Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="phoneNum" type="number" value="${userInstance.phoneNum}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'mailAds', 'error')} ">
	<label for="mailAds">
		<g:message code="user.mailAds.label" default="Mail Ads" />
		
	</label>
	<g:field type="email" name="mailAds" value="${userInstance?.mailAds}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'intro', 'error')} ">
	<label for="intro">
		<g:message code="user.intro.label" default="Intro" />
		
	</label>
	<g:textField name="intro" value="${userInstance?.intro}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'funLabel', 'error')} ">
	<label for="funLabel">
		<g:message code="user.funLabel.label" default="Fun Label" />
		
	</label>
	<g:textField name="funLabel" value="${userInstance?.funLabel}"/>
</div>

