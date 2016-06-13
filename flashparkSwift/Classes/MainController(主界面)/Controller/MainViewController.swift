//
//  MainViewController.swift
//  flashparkSwift
//
//  Created by 张弛 on 16/4/22.
//  Copyright © 2016年 张弛. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "t-b"), forBarMetrics: UIBarMetrics.Default)
        self.view.backgroundColor=UIColor.whiteColor()
    
        let navigationTitleAttribute: NSDictionary = NSDictionary(object: UIColor.whiteColor(), forKey: NSForegroundColorAttributeName)
        self.navigationItem.title = "首页"
        self.navigationController?.navigationBar.titleTextAttributes = navigationTitleAttribute as? [String : AnyObject]
        
        
        self.navigationItem.leftBarButtonItem=UIBarButtonItem(image: UIImage.init(named: "2-0")?.imageWithRenderingMode(.AlwaysOriginal), style: UIBarButtonItemStyle.Plain, target: self, action: #selector(MainViewController.doneSlide))
        
        
        self.navigationItem.rightBarButtonItem=UIBarButtonItem(image: UIImage.init(named: "3-0")?.imageWithRenderingMode(.AlwaysOriginal),style: UIBarButtonItemStyle.Plain, target: self, action: #selector(MainViewController.scan))
       
        setUI()
        
    }
    //菜单侧滑
    func doneSlide(){
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.drawController.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion:nil)
    
    }
    /**
     扫描
     */
    func  scan(){
        
        
        
    }
   
    func  setUI() {
        
        let imageBack1:UIImageView = UIImageView(frame: CGRectMake(0,0,Common.screenWidth,300))
        
        imageBack1.image = UIImage(named: "banner")?.imageWithRenderingMode(.AlwaysOriginal)
        view.addSubview(imageBack1)
        
        
        let imageBack2:UIImageView=UIImageView(frame:CGRectMake(0,300,Common.screenWidth, 80))
        imageBack2.image=UIImage(named: "banner1")?.imageWithRenderingMode(.AlwaysOriginal)
        view.addSubview(imageBack2)
        
         let btn = UIButton(type:.System)
        btn.frame=CGRectMake(Common.screenWidth*0.5-40,300+100,64,64)
        btn.setImage(UIImage.init(named: "zhifu-w")?.imageWithRenderingMode(.AlwaysOriginal), forState:.Normal)
        btn.setImage(UIImage.init(named: "zhifu-y")?.imageWithRenderingMode(.AlwaysOriginal), forState:.Selected)
        
        btn .addTarget(self, action:#selector(MainViewController.unpay), forControlEvents:UIControlEvents.TouchUpInside)
        
        view.addSubview(btn)
        
        
        
    }
    
    func  unpay(){
        
        
        
        
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
