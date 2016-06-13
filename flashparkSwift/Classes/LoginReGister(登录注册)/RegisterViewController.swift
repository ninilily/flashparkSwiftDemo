//
//  RegisterViewController.swift
//  flashparkSwift
//
//  Created by 张弛 on 16/4/25.
//  Copyright © 2016年 张弛. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    var nameTextField = UITextField()
    var passwordTextField=UITextField()
    var RepasswordTextField=UITextField()
    var CheckNumText = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "t-b"), forBarMetrics: UIBarMetrics.Default)
        self.view.backgroundColor=UIColor.whiteColor()
        
          self.navigationItem.leftBarButtonItem=UIBarButtonItem(image: UIImage.init(named: "back-w")?.imageWithRenderingMode(.AlwaysOriginal),style: UIBarButtonItemStyle.Plain, target: self, action: #selector(LoginViewController.doneSlide) )
        
    
        
        let navigationTitleAttribute: NSDictionary = NSDictionary(object: UIColor.whiteColor(), forKey: NSForegroundColorAttributeName)
        self.navigationItem.title = "注册"
        
        self.navigationController?.navigationBar.titleTextAttributes = navigationTitleAttribute as? [String : AnyObject]
        
        /**
         注册界面搭建
         */
         setUI()
        
    }
    
    func setUI() {
        
        
        
        nameTextField=UITextField.init(frame: CGRectMake(50,20,Common.screenWidth*0.7,50));
        nameTextField.borderStyle=UITextBorderStyle.RoundedRect
        nameTextField.placeholder="请输入手机号码"
        nameTextField.keyboardType=UIKeyboardType.NumberPad
        self.view.addSubview(nameTextField)
        
        
        passwordTextField=UITextField.init(frame:CGRectMake(50,90,Common.screenWidth*0.7,50))
        passwordTextField.placeholder="请输入昵称"
        passwordTextField.borderStyle=UITextBorderStyle.RoundedRect
        passwordTextField.secureTextEntry=true
        self.view.addSubview(passwordTextField)
        
        RepasswordTextField=UITextField.init(frame:CGRectMake(50,160,Common.screenWidth*0.7,50))
        RepasswordTextField.placeholder="请输入密码"
        RepasswordTextField.borderStyle=UITextBorderStyle.RoundedRect
        RepasswordTextField.secureTextEntry=true
        self.view.addSubview(RepasswordTextField)
        
        CheckNumText=UITextField.init(frame:CGRectMake(50,220,Common.screenWidth*0.4,50))
        CheckNumText.placeholder="请输入验证码"
        CheckNumText.borderStyle=UITextBorderStyle.RoundedRect
        CheckNumText.secureTextEntry=true
        self.view.addSubview(CheckNumText)
        
        
        let btn = UIButton.init(type:.System)
       btn.setImage(UIImage.init(named:"YanCode_y")?.imageWithRenderingMode(.AlwaysOriginal), forState:.Normal)
        btn.setImage(UIImage.init(named: "YanCode_w")?.imageWithRenderingMode(.AlwaysOriginal), forState:.Selected)
        btn.frame=CGRectMake(190,220,Common.screenWidth*0.3,50)
         btn.addTarget(self, action:#selector(RegisterViewController.getCode), forControlEvents:UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
        
        
        
        let btn1=UIButton.init(type:.System)
        btn1.setImage(UIImage.init(named:"register-w")?.imageWithRenderingMode(.AlwaysOriginal), forState:.Normal)
        
        btn1.setImage(UIImage.init(named:"register-y")?.imageWithRenderingMode(.AlwaysOriginal), forState:.Selected)
        
        btn1.frame=CGRectMake(50,290,Common.screenWidth*0.7,50)
        btn1.addTarget(self, action:#selector(RegisterViewController.Register), forControlEvents:UIControlEvents.TouchUpInside)
        
        self.view.addSubview(btn1)
        
        
    }
    /**
     注册
     */
    func Register()  {
        
        
    }
    
    /**
     获取验证码
     */
    func getCode()  {
    
        
        
        
    }
   //返回上一级登录
    func doneSlide(){
        self.navigationController?.popViewControllerAnimated(true)
        
        
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
