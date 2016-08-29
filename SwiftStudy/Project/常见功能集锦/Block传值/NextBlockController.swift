//
//  NextBlockController.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/16.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit
typealias returnBlock = (String)->()
class NextBlockController: SuperViewController,UITextFieldDelegate{
    var block : returnBlock?
    var textFiled : UITextField?
    override func viewDidLoad() {
        super.viewDidLoad()
        configNextBlcokControllerUI()
    }
    func configNextBlcokControllerUI() {
        textFiled = UITextField.init(frame: CGRectMake(0, 100, 200, 40))
        textFiled?.center.x = self.view.center.x
        textFiled?.borderStyle = .RoundedRect
        textFiled?.placeholder = "输入要传入的值"
        textFiled?.delegate = self
        self.view.addSubview(textFiled!)
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        textFiled?.becomeFirstResponder()
    }
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        textFiled?.resignFirstResponder()
    }
    func textFieldDidEndEditing(textField: UITextField) {
        self.block!((textFiled?.text)!)
    }
}
