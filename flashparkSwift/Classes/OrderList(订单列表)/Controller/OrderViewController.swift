//
//  OrderViewController.swift
//  flashparkSwift
//
//  Created by 张弛 on 16/4/22.
//  Copyright © 2016年 张弛. All rights reserved.
//
import UIKit

class OrderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "t-b"), forBarMetrics: UIBarMetrics.Default)
        self.view.backgroundColor=UIColor.init(colorLiteralRed:0.86, green:0.87, blue:0.87, alpha:1.0)
        
        
        let navigationTitleAttribute: NSDictionary = NSDictionary(object: UIColor.whiteColor(), forKey: NSForegroundColorAttributeName)
        self.navigationItem.title = "订单列表"
        self.navigationController?.navigationBar.titleTextAttributes = navigationTitleAttribute as? [String : AnyObject]
        
        self.navigationItem.leftBarButtonItem=UIBarButtonItem(image: UIImage.init(named: "back-w")?.imageWithRenderingMode(.AlwaysOriginal),style: UIBarButtonItemStyle.Plain, target: self, action: #selector(OrderViewController.doneSlide) )
        
    }
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
