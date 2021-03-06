//
//  AppDelegate.swift
//  flashparkSwift
//
//  Created by 张弛 on 16/4/20.
//  Copyright © 2016年 张弛. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var drawController:MMDrawerController!
    

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
      
        if (!NSUserDefaults.standardUserDefaults().boolForKey("firstLaunch"))
        {
            self.window?.rootViewController=GuideViewController();
            self.window?.makeKeyWindow()
            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "firstLaunch")
            
            
        }
        else
        {
            NSThread.sleepForTimeInterval(2.0)
            let leftView = LeftViewController()
            let mainView = MainViewController()
            
            let centerNav = UINavigationController(rootViewController:mainView)
          
            drawController=MMDrawerController(centerViewController:centerNav,leftDrawerViewController: leftView)
            drawController.maximumLeftDrawerWidth=Common.screenWidth*0.7
            
            drawController.openDrawerGestureModeMask=MMOpenDrawerGestureMode.All
            drawController.closeDrawerGestureModeMask=MMCloseDrawerGestureMode.All
            
            
            drawController.setDrawerVisualStateBlock({ (drawController, drawerSide, percentVisible)->Void in
                
                var sideDrawerViewController:UIViewController?
                if(drawerSide == MMDrawerSide.Left){
                    sideDrawerViewController = drawController.leftDrawerViewController;
                }
                sideDrawerViewController?.view.alpha = percentVisible
                
                
            })
            
            self.window?.rootViewController=drawController
            self.window?.makeKeyWindow()
            
            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "firstLaunch")
        }
    
        return true
    }
    
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

