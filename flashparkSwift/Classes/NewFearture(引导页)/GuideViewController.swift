//
//  GuideViewController.swift
//  flashparkSwift
//
//  Created by 张弛 on 16/4/21.
//  Copyright © 2016年 张弛. All rights reserved.
//

import UIKit

class GuideViewController: UIViewController,UIScrollViewDelegate {

    var scrollView=UIScrollView()
    var pageControl = UIPageControl()
    var btn=UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //pageControll
        pageControl.center = CGPointMake(self.view.frame.width/2, self.view.frame.height-30)
        pageControl.currentPageIndicatorTintColor=UIColor.cyanColor()
        pageControl.pageIndicatorTintColor=UIColor.whiteColor()
        pageControl.numberOfPages=4;
        pageControl.addTarget(self, action: Selector("scrollViewDidEndDecelerating"), forControlEvents: UIControlEvents.ValueChanged)
        
        //scrollView
        scrollView.frame=self.view.bounds
        scrollView.contentSize=CGSizeMake(4*self.view.frame.width, 0)
        scrollView.pagingEnabled=true
        scrollView.bounces=false
        scrollView.showsHorizontalScrollIndicator=false
        scrollView.delegate=self
        self.view.addSubview(scrollView)
        
        //设置循环图片
        for (var i=0;i<4;i++) {
            let image = UIImage(named:"y\(i+1)")
            let imageView = UIImageView(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height))
            imageView.image=image
            var frame = imageView.frame
            frame.origin.x = CGFloat(i)*frame.size.width
            imageView.frame = frame
            scrollView.addSubview(imageView)
            self.view.addSubview(pageControl)
            
        }
        
        btn.frame=CGRectMake(3*self.view.frame.width, self.view.frame.height - 100, self.view.frame.width, 50)

        btn.setImage(UIImage.init(named: "b-w1"), forState:UIControlState.Normal)
   
        btn.setImage(UIImage.init(named: "b-d1"), forState:UIControlState.Selected)
        
        btn.addTarget(self, action:#selector(GuideViewController.btnClick(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(btn)
    
    }

    func btnClick(button:UIButton) {
        
        let main = MainViewController()
    
        self.presentViewController(main, animated:true, completion:nil)
        
        
    }
    

    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let index = Int(scrollView.contentOffset.x / self.view.frame.size.width)    //获取当前页数
        pageControl.currentPage = index
        
        
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
