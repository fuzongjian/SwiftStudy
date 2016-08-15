//
//  RootViewController.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/15.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class RootViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let cellID = "cell"
    var tableView : UITableView?
    var items : NSArray?
    var controllers : NSArray?
    
    override func viewDidLoad() {
        self.title = "SwiftStudy"
        configRootViewControllerUI()
    }
    func configRootViewControllerUI(){
        items = ["基础","进阶","小扩展","问题集锦"]
        controllers = ["BasisController","AdvanceController","ProjectController","SummaryController"]
        tableView = UITableView.init(frame: self.view.bounds, style: .Plain)
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.tableFooterView = UIView()
        self.view.addSubview(tableView!)
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (items?.count)!
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(cellID)
        if cell == nil{
            cell = UITableViewCell.init(style: .Default, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = items?.objectAtIndex(indexPath.row) as? String
        cell?.textLabel?.textAlignment = .Center
        cell?.selectionStyle = .None
        return cell!
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controllerStr = controllers?.objectAtIndex(indexPath.row) as? String
        let ControllerName = NSBundle.mainBundle().infoDictionary!["CFBundleName"] as! String + "." + controllerStr!
        let aClass = NSClassFromString(ControllerName) as! UIViewController.Type
        let nextController = aClass.init()
        nextController.title = items?.objectAtIndex(indexPath.row) as? String
        self.navigationController?.pushViewController(nextController, animated: true)
    }
}
