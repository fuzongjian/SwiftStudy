//
//  FunctionController.swift
//  SwiftBasisStudy
//
//  Created by 陈舒澳 on 16/5/4.
//  Copyright © 2016年 speeda. All rights reserved.
//

import UIKit

class FunctionController: SuperViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(sayHello("fuzongjian"))
        
        print(halfOpenRangeLength(20, end: 25))
        
        print(sayHelloWorld())
        
        sayGoodBye("fuzongjian")
        
        let totol = returnCounts("fuzongjian")
        print("\(totol.first)  \(totol.sencond)  \(totol.third)")
        
        
        print("\(arithmeticMean(1,2,3,4,5))")
    
        
        print("\(alignRight("hello", count: 10, pad: "-"))")
        

        swapTwoInts(intout: 3, intout: 20)
        
        // Do any additional setup after loading the view.
    }
    // 函数的参数和返回值
    func sayHello(personName: String) ->String{
        let greeting = "Hello," + personName + "!"
        return greeting
    }
    func halfOpenRangeLength(start: Int,end: Int) -> Int{
        return end - start
    }
    // 无参数 有返回值
    func sayHelloWorld() ->String{
        return "Hello,World"
    }
    // 有参数 无返回值
    /*
        严格地说，sayGoodbye功能确实还返回一个值，即使没有返回值定义。函数没有定义返回类型但返 回了一个void返回类型的特殊值。它是一个简直是空的元组，实际上零个元素的元组，可以写为（）。
    */
    func sayGoodBye(personName: String){
        print("Goodbye,\(personName)")
    }
    
    // 多个返回值函数
    func returnCounts(string: String) ->(first: Int, sencond: String,third: String){
        let x = 10,y = "fuzongjian",z = "haohaoxuexi"
        return (x,y,z)
    }
    // 可变参数
    /*
        一个可变参数的参数接受零个或多个指定类型的值。当函数被调用时，您可以使用一个可变参数的参数来指定该参数可以传递不同数量的输入值
    */
    func arithmeticMean(numbers: Double...) ->Double{
        var total: Double = 0
        for number in numbers{
            total += number
        }
        return total / Double(numbers.count)
    }
    
    // 常量参数和变量参数
    /*
        函数参数的默认值都是常量。试图改变一个函数参数的值会让这个函数体内部产生一个编译时错误。在参数名称前用关键字var定义变量参数：
    */
    func alignRight(var string: String,count: Int,pad: String) ->String{
        let amountToPad = count - string.characters.count
        for _ in 1...amountToPad{
            string += pad
        
        }
        return string
    }
    
    // 输入--输出函数
    /*
    
    */
    func swapTwoInts(var intout a: Int,var intout b: Int){
        let temp = a
        a = b
        b = temp
        
        print("a = \(a) b = \(b)")
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
