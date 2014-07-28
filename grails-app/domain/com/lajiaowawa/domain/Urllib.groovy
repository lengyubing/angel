package com.lajiaowawa.domain
/**
 * 规范化标签，标签库，如果一个标签是大众都有的，就能被加入到标签库
 * @author xiaonanzhi
 *
 */
class Urllib {
	String address
	String catTag
	String area
	long createTime
	long modifyTime
	/**
	 * 网页截图
	 */
	String shortCutSnap

	static constraints = {
		address(url:true)
		catTag()
		area()
		createTime()
		modifyTime()
		shortCutSnap()
	}
}