//
//  TableAnimationController.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/19.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class TableAnimationController: SuperViewController,UITableViewDelegate,UITableViewDataSource {
    let cellID = "cellID"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView!)
    }
    // TableView Delegate Method
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellID", forIndexPath: indexPath) as! CustomTableCell
        cell.bgImageView?.image = UIImage.init(named: String(format: String(indexPath.row + 1) + ".jpg"))
        return cell
    }
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        var transform = CATransform3DIdentity
        transform = CATransform3DRotate(transform, 0, 0, 0, 1);//渐变
        transform = CATransform3DTranslate(transform, -200, 0, 0);//左边水平移动
        transform = CATransform3DScale(transform, 0, 0, 0);//由小变大
        cell.layer.transform = transform;
        cell.layer.opacity = 0.0;
        UIView.animateWithDuration(0.5) {
            cell.layer.transform = CATransform3DIdentity;
            cell.layer.opacity = 1;
        }
        
    }
    
    lazy var tableView : UITableView? = {
        let table = UITableView.init(frame: CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT), style: .Plain)
        table.delegate = self;
        table.dataSource = self
        table.rowHeight = 150
        table.registerNib(UINib.init(nibName: "CustomTableCell", bundle: nil), forCellReuseIdentifier: "cellID")
        table.tableFooterView = UIView.init()
        return table
    }()
}
