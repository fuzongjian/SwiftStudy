//
//  DetailController.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/15.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class DetailController: SuperViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        chooseInit()
        // Do any additional setup after loading the view.
    }
    func chooseInit(){
        if self.title == "UILabel"{//  Lable
            let lable = UILabel(frame: self.view.bounds)
            lable.text = "Hello,World"
            lable.backgroundColor = UIColor.blueColor()
            lable.textAlignment = NSTextAlignment.Center
            lable.font = UIFont.boldSystemFontOfSize(25)
            self.view.addSubview(lable)
        }else if self.title == "UIButton"{// UIButton
            let button = UIButton(type: .System)
            button.frame = self.view.bounds
            button.center = self.view.center
            button.setTitle("点我", forState: .Normal)
            button.setTitle("点我", forState: .Highlighted)
            button.setTitleColor(UIColor.redColor(), forState: .Normal)
            button.setTitleColor(UIColor.blueColor(), forState: .Highlighted)
            button.addTarget(self, action: #selector(backButtonClicked(_:)), forControlEvents: .TouchUpInside)
            self.view.addSubview(button)
        }else if self.title == "UIImageView"{// UIImageView
            let image = UIImage(named: "press-to-h")
            let imageView = UIImageView(frame: CGRectMake(0, 0, 100, 100))
            imageView.center = self.view.center
            imageView.image = image
            self.view.addSubview(imageView)
        }else if self.title == "UISlider"{// UISlider
            let slider = UISlider(frame: CGRectMake(0,0,300,30))
            slider.center = self.view.center
            slider.value = 0.5
            self.view.addSubview(slider)
        }else if self.title == "UIWebView"{
            let webView = UIWebView(frame: self.view.bounds)
            let url = NSURL(fileURLWithPath:"http://caipiao.m.taobao.com")
            let request = NSURLRequest(URL: url)
            webView.loadRequest(request)
            self.view.addSubview(webView)
        }else if self.title == "UISegmentedControl"{
            let segment = UISegmentedControl(items: ["fu","zong","jian"])
            segment.frame = CGRectMake(0, 0, 200, 30)
            segment.center = self.view.center
            self.view.addSubview(segment)
        }else if self.title == "UISwitch"{
            let swtch = UISwitch(frame: CGRectMake(0,0,100,30))
            swtch.on = true
            swtch.center = self.view.center
            self.view.addSubview(swtch)
        }else if self.title == "UITextField"{
            let textField = UITextField(frame: CGRectMake(0,0,200,30))
            textField.center = self.view.center
            textField.borderStyle = .RoundedRect
            textField.placeholder = "hello world"
            self.view.addSubview(textField)
        }else if self.title == "UIScrollView"{
            let scroll = UIScrollView(frame: CGRectMake(0,0,200,200))
            scroll.center = self.view.center
            scroll.pagingEnabled = true
            scroll.showsVerticalScrollIndicator = false
            self.view.addSubview(scroll)
            var fx: CGFloat = 0.0
            for i in 1...3{
                let view = UIView(frame:CGRectMake(fx,0.0,200,200))
                if i == 1{
                    view.backgroundColor = UIColor.redColor()
                }else{
                    view.backgroundColor = UIColor.blueColor()
                }
                fx += 200
                scroll.addSubview(view)
            }
            scroll.contentSize = CGSizeMake(3 * 200, 200)
        }else if self.title == "UISearchBar"{
            let searchbar = UISearchBar(frame: CGRectMake(0,0,300,40))
            searchbar.center = self.view.center
            searchbar.showsCancelButton = true
            searchbar.searchBarStyle = .Minimal
            self.view.addSubview(searchbar)
        }else if self.title == "UIPageControl"{
            let pageControl = UIPageControl(frame: CGRectMake(0,0,200,200))
            pageControl.center = self.view.center
            pageControl.numberOfPages = 5;
            pageControl.currentPage = 2
            pageControl.currentPageIndicatorTintColor = UIColor.redColor()
            pageControl.pageIndicatorTintColor = UIColor.blueColor()
            self.view.addSubview(pageControl)
        }else if self.title == "UIDatePicker"{
            let datePicker = UIDatePicker(frame: CGRectMake(0,0,300,200))
            datePicker.center = self.view.center
            self.view.addSubview(datePicker)
        }else if self.title == "UIPickerView"{
            let pickerView = UIPickerView(frame: CGRectMake(0,0,300,200))
            pickerView.center = self.view.center
            
            self.view.addSubview(pickerView)
        }else if self.title == "UIProgressView"{
            let progress = UIProgressView(progressViewStyle: .Default)
            progress.frame = CGRectMake(0, 0, 300, 30)
            progress.center = self.view.center
            progress.setProgress(0.5, animated: false)
            self.view.addSubview(progress)
        }else if self.title == "UITextView"{
            let textView = UITextView(frame: CGRectMake(0, 0, 300, 200))
            textView.center = self.view.center
            textView.backgroundColor = UIColor.lightGrayColor()
            textView.editable = false
            textView.font = UIFont.boldSystemFontOfSize(20)
            textView.text = "2012年，魏则西考入西安电子科技大学计算机专业。他成绩优异，排名在班级前5%。2014年4月，魏则西被查出得了滑膜肉瘤。这是一种恶性软组织肿瘤，目前没有有效的治疗手段，生存率极低。休学。2014年5月20日至2014年8月15日，魏则西接连做了4次化疗，25次放疗。2014年9月至2015年底，魏则西先后在武警二院进行了4次生物免疫疗法的治疗，花了二十多万元.治病的巨额花费将家里积蓄掏空，魏则西接受了4次化疗、25次放疗，吃了几百服中药，经历了3次手术。检查出滑膜肉瘤之后，学校曾经组织了募捐活动，在学校食堂放置了几处募捐箱，筹集了8万元钱，也有人进行义卖筹钱。所做的这一切都是希望能够帮助挽回年轻的生命，结果却是未能如愿。"
            self.view.addSubview(textView)
        }else if self.title == "UIToolbar"{
            let toolBar = UIToolbar(frame: CGRectMake(0,0,200,30))
            toolBar.center = self.view.center
            let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: nil, action: nil)
            let ItemA = UIBarButtonItem(title: "A", style: .Plain, target: nil, action: nil)
            let ItemB = UIBarButtonItem(title: "B", style: .Plain, target: nil, action: nil)
            let ItemC = UIBarButtonItem(title: "C", style: .Plain, target: nil, action: nil)
            let ItemD = UIBarButtonItem(title: "D", style: .Plain, target: nil, action: nil)
            toolBar.items = [flexibleSpace,ItemA,flexibleSpace,ItemB,flexibleSpace,ItemC,flexibleSpace,ItemD,flexibleSpace]
            self.view.addSubview(toolBar)
        }else if self.title == "UIActionSheet"{
            let button = UIButton(type: .System)
            button.frame = CGRectMake(0, 0, 100, 40)
            button.center = self.view.center
            button.setTitle("show", forState: .Normal)
            button.setTitle("show", forState: .Highlighted)
            button.setTitleColor(UIColor.redColor(), forState: .Normal)
            button.setTitleColor(UIColor.blueColor(), forState: .Highlighted)
            button.addTarget(self, action: #selector(shouActionSheet(_:)), forControlEvents: .TouchUpInside)
            self.view .addSubview(button)
        }else if self.title == "UIActivityIndicatorView"{
            let activity = UIActivityIndicatorView(activityIndicatorStyle: .Gray)
            activity.frame = CGRectMake(0, 0, 40, 40)
            activity.center = self.view.center
            activity.startAnimating()
            self.view.addSubview(activity)
        }else if self.title == "UICollectionView"{
            let flowlayout = UICollectionViewFlowLayout();
            flowlayout.scrollDirection = UICollectionViewScrollDirection.Vertical
            let collectionView = UICollectionView(frame: self.view.bounds,collectionViewLayout: flowlayout)
            collectionView.backgroundColor = UIColor.whiteColor()
            collectionView.delegate = self
            collectionView.dataSource = self
            self.view.addSubview(collectionView)
            collectionView.registerClass(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "ReuseIdentifier")
        }
        
        
    }
    func ButtonClicked(sender: UIButton!) {
        print("按钮点击事件处理")
    }
    func shouActionSheet(sender: UIButton){
        /*
         let alert = UIAlertController(title: "I'm title", message: "choose", preferredStyle: .Alert)
         alert.addAction(UIAlertAction(title: "YES", style: .Default, handler: nil))
         alert.addAction(UIAlertAction(title: "NO", style: .Default, handler: nil))
         self.presentViewController(alert, animated: true, completion: nil)
         */
        
        let alertView = UIAlertView()
        alertView.title = "I'm title"
        alertView.message = "I'm message"
        alertView.addButtonWithTitle("OK")
        alertView.addButtonWithTitle("NO")
        alertView.show()
        
    }
    //  UICollectionViewDataSource
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("ReuseIdentifier", forIndexPath: indexPath) as! CustomCollectionViewCell
        cell.imageView?.image = UIImage.init(named: "0.jpg")
//        cell.imageView?.image = UIImage(named: String(format: "%ld.jpg", indexPath.row))
        cell.imageView?.userInteractionEnabled = true
        return cell
    }
    
    // UICollectionViewDelegateFlowLayout methods
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(90, 90);
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(5.0, 5.0, 5.0, 5.0);
    }
    
    // UICollectionViewDelegate method
    func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    func collectionView(collectionView: UICollectionView, didHighlightItemAtIndexPath indexPath: NSIndexPath) {
        
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("点击了第\(indexPath.row + 1)张")
    }
}
