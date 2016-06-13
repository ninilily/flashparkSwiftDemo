//
//  Common.swift
//  MMDrawerControllerDemo
//
//  Created by wjl on 15/11/13.
//  Copyright © 2015年 Martin. All rights reserved.
//
/*
    Github： https://github.com/Wl201314
    微博：http://weibo.com/5419850564/profile?rightmod=1&wvr=6&mod=personnumber
*/
import Foundation
struct Common {

    static let screenWidth = UIScreen.mainScreen().bounds.maxX
    static let screenHeight = UIScreen.mainScreen().bounds.maxY
     /// 判断当前版本
    let IS_IOS7 = (UIDevice.currentDevice().systemVersion as NSString).doubleValue >= 7.0
    
    let IS_IOS8 = (UIDevice.currentDevice().systemVersion as NSString).doubleValue >= 8.0
    
    
    
    
}
  