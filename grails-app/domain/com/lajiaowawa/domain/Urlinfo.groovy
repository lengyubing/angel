package com.lajiaowawa.domain

/**
 * 个人对应的标签
 * 
 * @author xiaonanzhi
 *
 */
class Urlinfo{
	String catTag
	String area
	long createTime
	long modifyTime
	/**
	 * 网页截图
	 */
	String shortCutSnap
	String address
	static belongsTo=[owner:User,standardUrl:Urllib]
	static constraints = { address(url:true) }
}
