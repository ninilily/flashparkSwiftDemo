//
//  LoginViewController.swift
//  flashparkSwift
//
//  Created by 张弛 on 16/4/25.
//  Copyright © 2016年 张弛. All rights reserved.
//

import UIKit



class LoginViewController: UIViewController {

    var nameTextField = UITextField()
    var passwordTextField=UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "t-b"), forBarMetrics: UIBarMetrics.Default)
        self.view.backgroundColor=UIColor.whiteColor()
        
        
        let navigationTitleAttribute: NSDictionary = NSDictionary(object: UIColor.whiteColor(), forKey: NSForegroundColorAttributeName)
        self.navigationItem.title = "登录"
        self.navigationController?.navigationBar.titleTextAttributes = navigationTitleAttribute as? [String : AnyObject]
     
        self.navigationItem.leftBarButtonItem=UIBarButtonItem(image: UIImage.init(named: "back-w")?.imageWithRenderingMode(.AlwaysOriginal),style: UIBarButtonItemStyle.Plain, target: self, action: #selector(LoginViewController.doneSlide) )
        

        let btn = UIButton(type:.System)
        btn.frame=CGRectMake(view.frame.width-90,10,50,50)
        btn.setTitle("注册", forState:.Normal)
        btn.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        btn.addTarget(self, action:#selector(LoginViewController.ToRegister), forControlEvents: UIControlEvents.TouchUpInside)
        
        let  rightItem = UIBarButtonItem(customView: btn )
        self.navigationItem.rightBarButtonItem=rightItem
    
        /**
         login 界面搭建
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
        passwordTextField.placeholder="请输入密码"
        passwordTextField.borderStyle=UITextBorderStyle.RoundedRect
        passwordTextField.secureTextEntry=true
        self.view.addSubview(passwordTextField)
        
        
        let btn = UIButton.init(type:.System)
        btn.setImage(UIImage.init(named: "login-w")?.imageWithRenderingMode(.AlwaysOriginal), forState:.Normal)
        btn.setImage(UIImage.init(named: "login-y")?.imageWithRenderingMode(.AlwaysOriginal), forState:.Selected)
        btn.frame=CGRectMake(50,180,Common.screenWidth*0.7,41)
        btn.addTarget(self, action:#selector(LoginViewController.Login), forControlEvents:UIControlEvents.TouchUpInside)
        
        self.view.addSubview(btn)
        
        
        
    }
    
    func Login(){
        
        let manager=AFHTTPSessionManager()
        let params = ["mobile":nameTextField.text,"password":passwordTextField.text,"client":"ios"]

        
        
        
        
        
        
    }
    func ToRegister() {
        let register = RegisterViewController()
        self.navigationController?.pushViewController(register, animated: true)
        
        
        
    }
  //返回主页
    func doneSlide()  {
        let main = MainViewController()
        self.navigationController?.pushViewController(main, animated: true)
        
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
