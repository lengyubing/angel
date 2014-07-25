<%@ page import="com.lajiaowawa.domain.UrlLib" %>



<div class="fieldcontain ${hasErrors(bean: urlLibInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="urlLib.address.label" default="Address" />
		
	</label>
	<g:field type="url" name="address" value="${urlLibInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: urlLibInstance, field: 'catTag', 'error')} ">
	<label for="catTag">
		<g:message code="urlLib.catTag.label" default="Cat Tag" />
		
	</label>
	<g:textField name="catTag" value="${urlLibInstance?.catTag}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: urlLibInstance, field: 'area', 'error')} ">
	<label for="area">
		<g:message code="urlLib.area.label" default="Area" />
		
	</label>
	<g:textField name="area" value="${urlLibInstance?.area}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: urlLibInstance, field: 'createTime', 'error')} required">
	<label for="createTime">
		<g:message code="urlLib.createTime.label" default="Create Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="createTime" type="number" value="${urlLibInstance.createTime}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: urlLibInstance, field: 'modifyTime', 'error')} required">
	<label for="modifyTime">
		<g:message code="urlLib.modifyTime.label" default="Modify Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="modifyTime" type="number" value="${urlLibInstance.modifyTime}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: urlLibInstance, field: 'shortCutSnap', 'error')} ">
	<label for="shortCutSnap">
		<g:message code="urlLib.shortCutSnap.label" default="Short Cut Snap" />
		
	</label>
	<g:textField name="shortCutSnap" value="${urlLibInstance?.shortCutSnap}"/>
</div>

