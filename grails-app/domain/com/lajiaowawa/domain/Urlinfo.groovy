package com.lajiaowawa.domain

/**
 * ���˶�Ӧ�ı�ǩ
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
	 * ��ҳ��ͼ
	 */
	String shortCutSnap
	String address
	static belongsTo=[owner:User,standardUrl:Urllib]
	static constraints = { address(url:true) }
}
