package com.lajiaowawa.domain
/**
 * �淶����ǩ����ǩ�⣬���һ����ǩ�Ǵ��ڶ��еģ����ܱ����뵽��ǩ��
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
	 * ��ҳ��ͼ
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