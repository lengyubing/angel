package com.lajiaowawa.domain

/**
 * ���˶�Ӧ�ı�ǩ
 * 
 * @author xiaonanzhi
 *
 */
class UrlInfo extends UrlLib{
	String address
	static belongsTo=[owner:User,standardUrl:UrlLib]
	static constraints = { address(url:true) }
}
