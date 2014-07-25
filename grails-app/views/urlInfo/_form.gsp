<%@ page import="com.lajiaowawa.domain.UrlInfo" %>



<div class="fieldcontain ${hasErrors(bean: urlInfoInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="urlInfo.address.label" default="Address" />
		
	</label>
	<g:field type="url" name="address" value="${urlInfoInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: urlInfoInstance, field: 'catTag', 'error')} ">
	<label for="catTag">
		<g:message code="urlInfo.catTag.label" default="Cat Tag" />
		
	</label>
	<g:textField name="catTag" value="${urlInfoInstance?.catTag}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: urlInfoInstance, field: 'area', 'error')} ">
	<label for="area">
		<g:message code="urlInfo.area.label" default="Area" />
		
	</label>
	<g:textField name="area" value="${urlInfoInstance?.area}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: urlInfoInstance, field: 'createTime', 'error')} required">
	<label for="createTime">
		<g:message code="urlInfo.createTime.label" default="Create Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="createTime" type="number" value="${urlInfoInstance.createTime}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: urlInfoInstance, field: 'modifyTime', 'error')} required">
	<label for="modifyTime">
		<g:message code="urlInfo.modifyTime.label" default="Modify Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="modifyTime" type="number" value="${urlInfoInstance.modifyTime}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: urlInfoInstance, field: 'shortCutSnap', 'error')} ">
	<label for="shortCutSnap">
		<g:message code="urlInfo.shortCutSnap.label" default="Short Cut Snap" />
		
	</label>
	<g:textField name="shortCutSnap" value="${urlInfoInstance?.shortCutSnap}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: urlInfoInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="urlInfo.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${com.lajiaowawa.domain.User.list()}" optionKey="id" required="" value="${urlInfoInstance?.owner?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: urlInfoInstance, field: 'standardUrl', 'error')} required">
	<label for="standardUrl">
		<g:message code="urlInfo.standardUrl.label" default="Standard Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="standardUrl" name="standardUrl.id" from="${com.lajiaowawa.domain.UrlLib.list()}" optionKey="id" required="" value="${urlInfoInstance?.standardUrl?.id}" class="many-to-one"/>
</div>

