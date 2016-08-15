//
//  StringCharactersController.swift
//  SwiftBasisStudy
//
//  Created by  on 16/5/3.
//  Copyright © 2016年 speeda. All rights reserved.
//

import UIKit

class StringCharactersController: SuperViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testFirst()
        testSecond()
        // Do any additional setup after loading the view.
    }
    func testFirst (){
    // 空字符串的初始化
        var emptyString = ""  // 空字符串字面量
        var anotherString = String()    // 初始化 String 实例
        if emptyString.isEmpty {
            print("empty")
        }
        emptyString = "emptyString"
        anotherString = "anotherString"
        
    /**   字符串可变性(只能针对的是变量) */
        var variableString = "Horse"
        variableString += "and carriage"
        print("字符串可变性  variableString = \(variableString)")
        
        /**   字符串插值
         *  字符串插值是一种构建新字符串的方式，可以在其中包含常量、变量、字面量和表达式。 您插入的字符串字面量的每一项都被包裹在以反斜线为前缀的圆括号中：
         */
        let multiplier = 3
        let message = "\(multiplier) 乘以2.5 是\(Double(multiplier) * 2.5)"
        print("字符串插值 message\(message)")
    }
    /**
        字符串的比较
     */
    func testSecond (){
        // 是否相等
        let stringOne = "fuzongjian"
        let stringTwo = "fuzongjian"
        if stringOne == stringTwo{
            print("这两个字符串相等")
        }
        // 前缀后缀是否相等
        let testString = "fuzongjian"
        if testString.hasPrefix("fu"){
            print("\(testString)含有'fu'前缀")
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /**
    *
    *
    *
    *
    *
    *
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
