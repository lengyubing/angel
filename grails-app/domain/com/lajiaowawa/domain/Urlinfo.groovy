package com.lajiaowawa.domain

/**
 * ���˶�Ӧ�ı�ǩ
 * 
 * @author xiaonanzhi
 *
 */
class Urlinfo extends Urllib{
	String address
	static belongsTo=[owner:User,standardUrl:Urllib]
	static constraints = { address(url:true) }
}
