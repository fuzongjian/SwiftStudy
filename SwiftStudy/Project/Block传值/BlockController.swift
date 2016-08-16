//
//  BlockController.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/16.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class BlockController: SuperViewController {
    var testLable : UILabel?
    override func viewDidLoad() {
        super.viewDidLoad()
        configBlockControllerUI()
    }
    func configBlockControllerUI(){
        testLable = UILabel.init(frame: CGRectMake(0, 80, 200, 40))
        testLable?.center.x = self.view.center.x
        testLable?.textAlignment = .Center
        testLable?.text = "测试专用"
        self.view.addSubview(testLable!)
        
        
        let button = UIButton.init(type: .System)
        button.frame = CGRectMake(0, 150, 300, 50)
        button.center.x = self.view.center.x
        button.setTitle("跳转到下一个界面", forState: .Normal)
        button.addTarget(self, action: #selector(buttonClicked(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(button)
    }
    func buttonClicked(sender: UIButton) {
        let secondController = NextBlockController()
        secondController.block = {str in
            self.testLable?.text = str
        }
        self.navigationController?.pushViewController(secondController, animated: true)
    }
}
