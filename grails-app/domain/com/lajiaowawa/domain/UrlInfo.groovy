package com.lajiaowawa.domain

/**
 * 个人对应的标签
 * 
 * @author xiaonanzhi
 *
 */
class UrlInfo extends UrlLib{
	String address
	static belongsTo=[owner:User,standardUrl:UrlLib]
	static constraints = { address(url:true) }
}
