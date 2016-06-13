//
//  WalletViewController.swift
//  flashparkSwift
//
//  Created by 张弛 on 16/4/22.
//  Copyright © 2016年 张弛. All rights reserved.
//

import UIKit

class WalletViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
  
    private var tableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "t-b"), forBarMetrics: UIBarMetrics.Default)
        self.view.backgroundColor=UIColor.init(colorLiteralRed:0.86, green:0.87, blue:0.87, alpha:1.0)

        
        let navigationTitleAttribute: NSDictionary = NSDictionary(object: UIColor.whiteColor(), forKey: NSForegroundColorAttributeName)
        self.navigationItem.title = "我的钱包"
        self.navigationController?.navigationBar.titleTextAttributes = navigationTitleAttribute as? [String : AnyObject]
        
        
        setTableView()
        
        self.navigationItem.leftBarButtonItem=UIBarButtonItem(image: UIImage.init(named: "back-w")?.imageWithRenderingMode(.AlwaysOriginal),style: UIBarButtonItemStyle.Plain, target: self, action: #selector(WalletViewController.doneSlide) )

        
        
    }
    func doneSlide()  {
        let main = MainViewController()
        self.navigationController?.pushViewController(main, animated: true)
        
        
    }
    

    func setTableView()  {
      
        tableView=UITableView.init(frame: CGRectMake(0,44, UIScreen.mainScreen().bounds.size.width,60*2), style:UITableViewStyle.Plain)
        tableView.delegate=self
        tableView.dataSource=self
         view.addSubview(tableView)
        
        
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell  {
        let identifier="cell"
        
        var cell = tableView.dequeueReusableCellWithIdentifier(identifier)
        
        if cell==nil {
            
            cell=UITableViewCell(style: .Value1, reuseIdentifier: identifier)
           
            cell!.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
            
            
            
        }
        let textArray=["支付宝","微信"]
        cell?.textLabel?.text=textArray[indexPath.row]

        var imageArr=["zhifubao","weixin"]
        cell?.imageView?.image=UIImage.init(named:imageArr[indexPath.row])
        
        return cell!
        
        
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 60;
        
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
