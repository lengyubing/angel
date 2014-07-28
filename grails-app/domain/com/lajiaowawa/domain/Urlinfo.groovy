package com.lajiaowawa.domain

/**
 * 个人对应的标签
 * 
 * @author xiaonanzhi
 *
 */
class Urlinfo extends Urllib{
	String address
	static belongsTo=[owner:User,standardUrl:Urllib]
	static constraints = { address(url:true) }
}
