//
//  LeftViewController.swift
//  flashparkSwift
//
//  Created by 张弛 on 16/4/22.
//  Copyright © 2016年 张弛. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate {
    private var tableView:UITableView!
    private var scrollView:UIScrollView!
    private var viewAdd:UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置列表
        setTableView()
        //设置头像视图
        setHeadView()
        //未登录显示登录注册
        setLoginAndRegister()
        
        self.view.backgroundColor=UIColor.init(colorLiteralRed:0.28, green:0.28, blue:0.29, alpha:1.0)
   
    }

    func setHeadView(){
        
        viewAdd = UIView.init(frame: CGRectMake(0,0,Common.screenWidth*0.7,140))
        view.addSubview(viewAdd)
        
        let imageView = UIImageView.init(frame: CGRectMake(70,40,40,40))
        imageView.image=UIImage.init(named: "4")
        viewAdd.addSubview(imageView)
        
        
        let tap = UITapGestureRecognizer.init(target: self, action:#selector(LeftViewController.tapToLogin))
        
        viewAdd.addGestureRecognizer(tap)
        
    
    }
    //未登录注册按钮
    func  setLoginAndRegister(){
        
        let label1 = UILabel.init(frame:CGRectMake(60,100,90,30));
        
        label1.text="车主信息"
        label1.textColor=UIColor.init(red:0.8, green:0.8, blue:0.8, alpha:1.0)
        
        viewAdd.addSubview(label1)
        
    }
    //点击进入登录页
    func tapToLogin() {
        
        let login = LoginViewController()
        let centerNav = UINavigationController(rootViewController:login)
        
        let appdelegate=UIApplication.sharedApplication().delegate as! AppDelegate
        appdelegate.drawController.centerViewController=centerNav
        
        appdelegate.drawController.toggleDrawerSide(MMDrawerSide.Left, animated:true, completion: nil)
        
        
        
    }
    func setTableView(){
        tableView=UITableView.init(frame:  CGRectMake(0,140, Common.screenWidth * 0.7, view.frame.height), style: UITableViewStyle.Plain)
        tableView.backgroundColor=UIColor.clearColor()
        tableView.delegate=self;
        tableView.dataSource=self;
        tableView.separatorStyle = UITableViewCellSeparatorStyle.SingleLine
        tableView.separatorColor=UIColor.clearColor()
        view.addSubview(tableView)

    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 5
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell  {
        let identifier="cell"
        
        var cell = tableView.dequeueReusableCellWithIdentifier(identifier)
        
        if cell==nil {
            
            cell=UITableViewCell(style: .Value1, reuseIdentifier: identifier)
            cell!.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
            cell?.backgroundColor=UIColor.clearColor()
       
        }
        let textArray=["我的钱包","预约开锁","车辆管理","订单列表","设置"]
        cell?.textLabel?.text=textArray[indexPath.row]
        cell?.textLabel?.textColor=UIColor.whiteColor()
        
        cell?.selectedBackgroundView?.backgroundColor=UIColor.init(colorLiteralRed:0.46, green:0.46, blue:0.47, alpha:1.00)
        
        var
        imageArr=["8","10","6","9","7"]
        cell?.imageView?.image=UIImage.init(named:imageArr[indexPath.row])
        
        return cell!
        
    
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        
        if indexPath.row==0 {
            let wallet = WalletViewController()
            let centerNav = UINavigationController(rootViewController: wallet)
            
            let appdelegate=UIApplication.sharedApplication().delegate as! AppDelegate
            appdelegate.drawController.centerViewController=centerNav
            
            appdelegate.drawController.toggleDrawerSide(MMDrawerSide.Left, animated:true, completion: nil)
            
        }
        
            
        else if indexPath.row==2
        {
            let car = CarViewController()
            let centerNav = UINavigationController(rootViewController:car)
            
            let appdelegate=UIApplication.sharedApplication().delegate as! AppDelegate
            appdelegate.drawController.centerViewController=centerNav
            appdelegate.drawController.toggleDrawerSide(MMDrawerSide.Left, animated:true, completion: nil)
            
        }
        else if indexPath.row==3
        {
            let order = OrderViewController()
            let centerNav = UINavigationController(rootViewController:order)
            let appdelegate=UIApplication.sharedApplication().delegate as! AppDelegate
            appdelegate.drawController.centerViewController=centerNav
            appdelegate.drawController.toggleDrawerSide(MMDrawerSide.Left, animated:true, completion: nil)
            
        }
        else if indexPath.row==4
        {
            let setting = SettingViewController()
            let centerNav = UINavigationController(rootViewController:setting)
            let appdelegate=UIApplication.sharedApplication().delegate as! AppDelegate
            appdelegate.drawController.centerViewController=centerNav
            appdelegate.drawController.toggleDrawerSide(MMDrawerSide.Left, animated:true, completion: nil)
        }
        
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 50;
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
