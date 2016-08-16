//
//  ProjectController.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/15.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class ProjectController: SuperViewController,UITableViewDelegate,UITableViewDataSource{
    let cellID = "cell"
    var tableView : UITableView?
    var items : NSArray?
    var controllers : NSArray?
    override func viewDidLoad() {
        super.viewDidLoad()
        configProjectControllerUI()
    }
    func configProjectControllerUI(){
        items = ["仿支付宝雷达效果","Block传值"];
        controllers = ["RadarController","BlockController"];
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
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controllerStr = controllers?.objectAtIndex(indexPath.row) as? String
        let ControllerName = NSBundle.mainBundle().infoDictionary!["CFBundleName"] as! String + "." + controllerStr!
        let aClass = NSClassFromString(ControllerName) as! UIViewController.Type
        let nextController = aClass.init()
        nextController.title = items?.objectAtIndex(indexPath.row) as? String
        self.navigationController?.pushViewController(nextController, animated: true)
    }
}
