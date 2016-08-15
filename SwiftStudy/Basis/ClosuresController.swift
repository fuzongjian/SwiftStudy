//
//  ClosuresController.swift
//  SwiftBasisStudy
//
//  Created by 陈舒澳 on 16/5/5.
//  Copyright © 2016年 speeda. All rights reserved.
//
/**    闭包
    一、闭包是自包含的函数代码块，可以在代码中被传递和使用。Swift中的闭包与C和Objective-C中的代码块（blocks）以及其他一些编程语言中的lambodas函数比较相似
    二、闭包可以捕获和存储其所在上下文任意常量和变量的引用，这就是所谓的闭包并包裹着这些常量和变量，俗称闭包，Swift会为我们管理在捕获过程中涉及到的所有内存操作

    闭包的三种方式（全局和嵌套函数实际也是特殊的闭包）
    (1) 全局函数是一个有名字但不会捕获任何值得闭包
    (2) 嵌套函数是一个有名字并可以捕获其闭包函数域内值得闭包
    (3) 闭包表达式是一个利用轻量级语法所写的可以捕获其上下文中变量或常量值的匿名闭包
*/
import UIKit

class ClosuresController: SuperViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        sortedFunc()
    }
    /**   sorted 函数（The Sorted Function）
        Swift 标准库提供了sorted函数，会根据您提供的基于输出类型排序的闭包函数将已知类型数组中的值进行排序。 一旦排序完成，函数会返回一个与原数组大小相同的新数组，该数组中包含已经正确排序的同类型元素。
    */
    func sortedFunc (){
        // 数组
        let names = ["Chris","Alex","Ewa","Barray","Deniella"]
        let newNames = names.sort(<)
        print("names = \(names)  newNames = \(newNames)")
        // 字典对Key排序
        let dic = ["A":[1,2],"Z":[3,4],"D":[5,6]]
        let newDic = Array(dic.keys).sort(<)
        print("dic = \(dic) newDic = \(newDic)")
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
