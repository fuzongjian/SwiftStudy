//
//  CommonController.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/29.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class CommonController: SuperViewController,UITableViewDelegate,UITableViewDataSource {
    let cellID = "cell"
    var tableView : UITableView?
    var dataArray : NSArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configProjectControllerUI()
    }
    func configProjectControllerUI(){
        dataArray = NSArray.init(contentsOfFile: NSBundle.mainBundle().pathForResource("common", ofType: "plist")!)
        tableView = UITableView.init(frame: self.view.bounds, style: .Plain)
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.tableFooterView = UIView()
        self.view.addSubview(tableView!)
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (dataArray?.count)!
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(cellID)
        if cell == nil{
            cell = UITableViewCell.init(style: .Default, reuseIdentifier: cellID)
        }
        let strDic = dataArray?.objectAtIndex(indexPath.row) as! Dictionary<String,String>
        cell?.textLabel?.text = strDic["title"]
        cell?.textLabel?.textAlignment = .Center
        cell?.selectionStyle = .None
        return cell!
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controllerDic = dataArray?.objectAtIndex(indexPath.row) as! Dictionary<String,String>
        let controllerStr = controllerDic["name"]
        let ControllerName = NSBundle.mainBundle().infoDictionary!["CFBundleName"] as! String + "." + controllerStr!
        let aClass = NSClassFromString(ControllerName) as! UIViewController.Type
        let nextController = aClass.init()
        nextController.title = controllerDic["title"]
        self.navigationController?.pushViewController(nextController, animated: true)
    }
}
