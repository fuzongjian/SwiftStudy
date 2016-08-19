//
//  SuperViewController.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/15.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class SuperViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        configSuperViewControllerUI()
    }
    func configSuperViewControllerUI() {
        let backButton = UIButton(type:.System)
        backButton.frame = CGRectMake(0, 0, 40, 40)
        backButton.titleEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0)
        backButton.setTitle("返回", forState: .Normal)
        backButton.addTarget(self, action: #selector(backButtonClicked(_:)), forControlEvents: .TouchUpInside)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: backButton)
    }
    func backButtonClicked(sender:UIButton) {
        self.navigationController?.popViewControllerAnimated(true)
    }
}
