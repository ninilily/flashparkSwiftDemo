//
//  API.swift
//  flashparkSwift
//
//  Created by 张弛 on 16/5/11.
//  Copyright © 2016年 张弛. All rights reserved.
//

import UIKit

let SCREEN_HEIGHT = UIScreen.mainScreen().bounds.height
let SCREEN_WIDTH = UIScreen.mainScreen().bounds.width

let kHttpDemo = NSString.init(string:"http://mobile.letting.tech:9000")

let kHttpModel = NSString.init(string:"http://192.168.1.106:8080")


//----------用户注册--------
//登录
let kHttpLogon  = NSString.init(string: "/user/login")

//注册
let kHttpRegister = NSString.init(string: "/user/register")


//申请短信验证码
let kHttpactivateCode = NSString.init(string: "/activate/code")


//验证短信验证码
let kHttpActivateMobile = NSString.init(string: "/activate/mobile")

//添加车辆
let  kHttpaddcar = NSString.init(string: "/car/add")

//车辆管理
let  kHttpCarManager = NSString.init(string: "/car/mine")

//删除车辆
let  kHttpDelcar = NSString.init(string: "/car/delete")

//车辆验证
let  kHttpCarVerify = NSString.init(string: "/car/verify")

//用户信息更新
let  kUpdate = NSString.init(string: "/user/update")


//用户设置更新
let  kSetting = NSString.init(string: "/user/setting")

//----------停车场查询----------
//附近停车场列表
let  kHttpNearpark = NSString.init(string: "/park/nearby")

//附近停车场详情
let  kHttpParkDetail = NSString.init(string: "/park/detail")

//--------订单列表
//订单列表
let  kHttpMine = NSString.init(string: "/order/mine")
//订单详情
let  kHttpMineDetail = NSString.init(string: "/order/detail")
//支付
let  alipay = NSString.init(string: "/payment/aliSign")
//未支付
let  unalipay = NSString.init(string: "/order/unpay")