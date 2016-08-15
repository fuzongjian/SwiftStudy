//
//  ControlFlowController.swift
//  SwiftBasisStudy
//
//  Created by 陈舒澳 on 16/5/3.
//  Copyright © 2016年 speeda. All rights reserved.
/**   控制流
*   Swift提供了所有C类语言的控制流结构，包括for和while循环来执行一个任务多次；if和switch语句来执行确定的条件下不同的分支的代码；break和continue关键字能将运行流程转到你代码的另一个点上。
*   
*
*
*
*
*/

import UIKit

class ControlFlowController: SuperViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testFirst()
        
        testThird()
        
        testForth()
        // Do any additional setup after loading the view.
    }
    //  for循环
    func testFirst (){
        //Index常量仅仅存在于循环的范围内。如果你想要在循环之后得到index的值，或者想要使用index的值作为变量，你必须在循环之前声明它。
        for index in 1...5{
            print("\(index) times 5 is \(index * 5)")
        }
        
        //如果不需要范围的值，可以用下划线替代变量名来忽略这些值:
        let base = 3
        let power = 10
        var answer = 1
        for _ in 1...power{
            answer *= base
        }
        print("\(base) to the power of \(power) is \(answer)")
        
        // 使用for-in循环来迭代出array中的每一个项：
        let names = ["fu","zong","jian"]
        for name in names{
            print("hello world \(name)")
        }
        
        //同样可以迭代字典来访问其中的键值对。当迭代字典时里面的每一个项都以（key,value）元组的形式来返回，你可以在for-in的循环体中分解 (key, value) 元组的成员，把成员作为显性命名的常量来使用。
        let numberOfLegs = ["spider": 8,"ant": 6,"cat": 4]
        for(animalName,legCount) in numberOfLegs{
            print("\(animalName)s have \(legCount) legs")
        }
        
      // 除了for-in循环，Swift还支持传统C语言按条件递增的for循环
      //形如  for <initialization>; <condition>; <increment> { <statements> }
        for var index = 0; index < 3; ++index{
            print("index is \(index)")
        }
        
        /*常量和变量在初始化表达式中的声明（比如var index = 0）只在for循环自己内部有效。如果需要知道index最终的值，必须在循环开始前声明index*/
        var index: Int
        for index = 0; index < 3; ++index{
            print("index is \(index)")
        }
        print("the loop is stop index is \(index)")
        
    }
    
    
    // while Loops -while循环
    func testSecond(){
        // while 一个while循环开始于计算单个的条件，如果条件为true，一组语句将重复直到条件变为false。
        /* 一般形式
        while <condition> {
          <statements>
        } 
        */
        
        // do while While循环的另一个形式是do-while，在考虑循环条件前先执行一次整个循环体，然后再继续重复循环直到条件为false。
        /*   一般形式
            do {
            <statements>
            } while <condition>
        */
    }
    
    // 条件语句
    func testThird () {
        // if
        let temperature = 30
        if temperature <= 32{
            print("\(temperature) is smaller 32")
        }else{
            print("\(temperature) is bigger 32")
        }
        
        // Switch  每个case的主干包括只少一个可执行的语句。
        let someCharacter: Character = "e"
        switch someCharacter {
            case "a","b","c","d","e":
            print("yes")
        default:
            print("no")
        }
        // Switch 范围匹配
        let count = 300000000
        var naturalCount = "fuzongjian"
        switch count{
        case 0:
            naturalCount = "no"
        case 1...3:
            naturalCount = "a few"
        case 4...9:
            naturalCount = "several"
        default:
            naturalCount = "millions and millions of"
        }
        print("there are \(naturalCount)")
    }
      // 元组
    func testForth(){
        let somePoint = (1, 1)
        switch somePoint {
        case (0, 0):
            print("(0, 0) is at the origin")
        case (_, 0):
            print("(\(somePoint.0), 0) is on the x-axis")
        case (0, _):
            print("(0, \(somePoint.1)) is on the y-axis")
        case (-2...2, -2...2):
            print("(\(somePoint.0), \(somePoint.1)) is inside the box")
        default:
            print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
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
