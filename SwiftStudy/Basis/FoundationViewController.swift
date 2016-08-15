//
//  FoundationViewController.swift
//  SwiftBasisStudy
//
//  Created by  on 16/5/3.
//  Copyright © 2016年 speeda. All rights reserved.
//

import UIKit
/*  常量和变量
*  定义：常量和变量把一个名字和一个指定类型的值关联起来。常量的值一旦设定就不能改变，而变量的值可以随意改变。
*  声明
*  常量用let来声明，变量用var声明。（声明多个的时候用逗号隔开）
*  类型标注
*  需要在常量或者变量名后面加上一个冒号和空格，然后加上类型名称。
*  命名
*  常量和变量名不能包含数学符号、箭头、保留的（或者非法的）Unicode码位、连线与制表符。同时也不能以数字开头。
*  输出
*  用printIn函数来输出当前常量或变量的值。
*  分号
*  Swift并没有强制要求在每一条语句的结尾处使用分号，但有一种情况必须使用分号，如果同一行内写多条独立的语句，必须加上分号。
*/

/*    数据类型
 *  整数  Swift提供了8、16、32、64位的有符号和无符号整数类型
 *  范围  可以通过整数类型的min和max属性来获取对应类型的最大值和最小值
 *  Int Swift提供了一个特殊的整数类型Int，长度与当前平台的原生字长相同（在32位平台上，Int和Int32长度相同；在64位平台上，Int和Int64长度相同）
 *  UInt 与 Int 雷同
 *
 *
 *
 *
 */

class FoundationViewController: SuperViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testFirst()
        testSecond()
        testThird()
        // Do any additional setup after loading the view.
    }
    func testFirst() {
        // 单个变量和常量的定义
        let maxNumber = 10
        var minNumber = 5
        print("单个变量的定义 maxNumber = \(maxNumber) minNumber = \(minNumber)")
        minNumber = 20
        //  多个变量和常量的定义
        var x = 100,y = 200,z = 300
        print("多个变量的定义 x = \(x) y = \(y) z = \(z)")
        x = 10;y = 20;z = 30
        
        // 类型标注
        var message: String
        message = "fuzongjian"
        print("类型标注 Message = \(message)")
        
        // 变量常量的命名
        let 打野 = "打劫"
        var 🐶 = "🐱"
        print("打野 = \(打野)  🐶 = \(🐶)")
        🐶 = "🐑"
        
       // 整数范围
        let minValue = UInt8.min
        let maxValue = UInt8.max
        print("整数范围  minValue = \(minValue) maxValue = \(maxValue)")
        
        //整数与浮点数的转换
        let three = 3
        let point = 0.1415926
        let pi = Double(three) + point
        let piInt = Int(pi)
        print("整数与浮点数的转换 pi = \(pi)  piInt = \(piInt)")
    }
    func testSecond (){
    /**  类别命名
    *
    *  类型别名(type aliases)就是给现有类型定义另一个名字
    * 
    */
        typealias sample = UInt16
        let output = sample.min
        print("类别命名 \(output)")
    }
    func testThird (){
    /**  布尔值
    *  Swift 有一个基本的布尔(Boolean)类型，叫做Bool
    *
    *  Swift 有两个布尔常量，true和false
    */
        let bool = true
        if bool{
            print("ture")
        }else{
            print("yes")
        }
      
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
