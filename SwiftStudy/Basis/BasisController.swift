//
//  BasisController.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/15.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class BasisController: SuperViewController,UITableViewDelegate,UITableViewDataSource{
    let cellID = "cell"
    var  tableView : UITableView?
    var items : NSArray?
    var controllers : NSArray?
    override func viewDidLoad() {
        super.viewDidLoad()
        configBasisControllerUI()
    }
    func configBasisControllerUI() {
         items = ["基础部分(Foundation)","字符串和字符(StringCharacters)","集合类型(CollectionTypes)","控制流(ControlFlow)","函数(Function)","闭包(Closures)","字符串的截取(Range)"]
        controllers = ["FoundationViewController","StringCharactersController","CollectionTypesController","ControlFlowController","ClosuresController","FunctionController","RangeViewController"]
        
        tableView = UITableView.init(frame: self.view.bounds, style: .Plain)
        tableView?.delegate = self
        tableView?.dataSource = self
        self.view.addSubview(tableView!)
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items!.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(cellID)
        if cell == nil {
            cell = UITableViewCell.init(style: .Default, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = items?.objectAtIndex(indexPath.row) as? String
        cell?.textLabel?.textAlignment = .Center
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
