package com.lajiaowawa.domain

/**
 * 
 * @author xiaonanzhi
 *
 */
class User {
	String nickname
	String avatar
	long birthday
	int phoneNum
	String mailAds
	String intro
	String funLabel
	static constraints = {
		nickname(blank:false)
		avatar(blank:true)
		birthday()
		phoneNum()
		mailAds(blank:true,email:true)
		intro()
		funLabel()
	}
}

