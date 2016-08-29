//
//  CommonConfig.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/19.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit
// 此处判断机型
let iPhone6Plus = (UIScreen.mainScreen().bounds.size.height == 736) ? true : false
let iPhone6 = (UIScreen.mainScreen().bounds.size.height == 667) ? true : false
let iPhone5 = (UIScreen.mainScreen().bounds.size.height == 568) ? true : false
let iPhone4 = (UIScreen.mainScreen().bounds.size.height == 480) ? true : false
// 颜色简化
func RGB(r:CGFloat,g:CGFloat,b:CGFloat)->UIColor{
    return UIColor.init(red: r, green: g, blue: b, alpha: 1.0)
}
func RGBA(r:CGFloat,g:CGFloat,b:CGFloat,a:CGFloat)->UIColor{
    return UIColor.init(red: r, green: g, blue: b, alpha: a)
}
//let RandomColor = UIColor.init(red: , green: <#T##CGFloat#>, blue: <#T##CGFloat#>, alpha: <#T##CGFloat#>)

// 此处获得屏幕的宽度和高度
let SCREEN_HEIGHT = UIScreen.mainScreen().bounds.size.height
let SCREEN_WIDTH = UIScreen.mainScreen().bounds.size.width
// 此处获得设备的版本号
let IOSVERSION = Int(Float(UIDevice.currentDevice().systemVersion)!)
class CommonConfig: NSObject {
}

