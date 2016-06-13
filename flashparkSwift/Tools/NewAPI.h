//
//  NewAPI.h
//  flashparkSwift
//
//  Created by 张弛 on 16/4/25.
//  Copyright © 2016年 张弛. All rights reserved.
//

#ifndef NewAPI_h
#define NewAPI_h

#define kHttpModel @"http://112.65.170.174:8882"


//----------用户注册--------
//登录
#define kHttpLogin @"/user/login"

//注册
#define kHttpRegister @"/user/register"

//申请短信验证码
#define kHttpactivateCode @"/activate/code"

//验证短信验证码
#define kHttpActivateMobile @"/activate/mobile"

//添加车辆
#define kHttpaddcar @"/car/add"

//车辆管理
#define kHttpCarManager @"/car/mine"

//删除车辆
#define  khttpDelcar @"/car/delete"

//车辆验证
#define KHttpCarVerify @"/car/verify"

//用户信息更新
#define  kUpdate @"/user/update"

//用户设置更新
#define ksetting  @"/user/setting"

//----------停车场查询----------
//附近停车场列表
#define kHttpNearpark @"/park/nearby"

//附近停车场详情
#define kHttpParkDetail @"/park/detail"

//--------订单列表
//订单列表
#define kHttpMine @"/order/mine"

//订单详情
#define  kHttpMineDetail @"/order/detail"

//支付
#define alipay @"/payment/aliSign"

//未支付
#define unalipay @"/order/unpay"


#endif /* NewAPI_h */
