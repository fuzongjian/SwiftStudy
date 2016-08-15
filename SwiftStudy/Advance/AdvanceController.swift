//
//  AdvanceController.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/15.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class AdvanceController: SuperViewController,UITableViewDelegate,UITableViewDataSource {
    var tableView           : UITableView?
    var items               : NSArray?
    let cellID = "cell"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "常见控件"
        self.items = ["UILabel", "UIButton", "UIImageView", "UISlider", "UIWebView", "UISegmentedControl", "UISwitch", "UITextField", "UIScrollView", "UISearchBar", "UIPageControl", "UIDatePicker", "UIPickerView", "UIProgressView", "UITextView", "UIToolbar", "UIActionSheet", "UIActivityIndicatorView", "UICollectionView"]
        initTableview()
        
        // Do any additional setup after loading the view.
    }
    func initTableview(){
        tableView = UITableView(frame: self.view.frame,style: UITableViewStyle.Plain)
        tableView!.delegate = self
        tableView!.dataSource = self
        self.view.addSubview(self.tableView!)
        
    }
    //  dataSource
    func tableView(tableView: UITableView,  numberOfRowsInSection section: Int) ->Int {
        return self.items!.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier(cellID)
        if(cell == nil){
            cell = UITableViewCell(style: .Default, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = items?.objectAtIndex(indexPath.row) as? String
        cell?.textLabel?.textAlignment = NSTextAlignment.Center
        return cell!
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.tableView!.deselectRowAtIndexPath(indexPath, animated: true)
        let detailController = DetailController()
        detailController.title = self.items?.objectAtIndex(indexPath.row) as? String
        self.navigationController?.pushViewController(detailController, animated: true)
    }
}
