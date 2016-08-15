//
//  CollectionTypesController.swift
//  SwiftBasisStudy
//
//  Created by 陈舒澳 on 16/5/3.
//  Copyright © 2016年 speeda. All rights reserved.
//

/**   集合类型
*   Swift提供了两种集合类型来存放多个值——数组（Array）和字典（Dictionary）。
*   数据把相同类型的值存放在一个有序链表里，字典把相同类型的值存放在一个无序集合里，这些值可以通过唯一标识符来引用和查找
*   在Swift里，数据和字典里所能存放的值的类型是明确的
*
*
*
*/
import UIKit

class CollectionTypesController: SuperViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        testArray()
        testDictionary()
        // Do any additional setup after loading the view.
    }
    func testDictionary(){
        //字典初始化
        var airports: Dictionary<String,String> = ["TYO": "Tokyo","DUB": "Dublin"]
        let airportsecond = ["TYO": "Tokyo","DUB": "Dublin"]
        print("字典初始化 airports == \(airports)\n airportsecond==\(airportsecond)")
        //字典的存取与修改
        //获取元素数量
        print("the dictionary of airports contains \(airports.count) items")
        // 添加元素(可以使用下标语法向字典中添加新的元素。以一个合适类型的新键作为下标索引，并且赋给它一个合适类型的值：)
        airports["fu"] = "zong"
        print("add the newDictionary is \(airports)")
        // 修改元素(也可以使用下标语法来改动某个键对应的值：)
        airports["fu"] = "jian"
        print("update the newDictionary is \(airports)")
        
        // updateValue(forKey:)
        // 如果oldValue的值存在，则表明更新前该键有相应的值，否则无。可以检测是否发生了值得更新
        // 同时可以检测是否存在该键
        if let oldValue = airports.updateValue("yang", forKey: "fu"){
            print("the old value for fu was \(oldValue)")
        }
        
        // removeValueForKey 
        // 删除键值对 如果该键值对存在的话，就返回删掉的值，否则返回nil
        if let removeValue = airports.removeValueForKey("fu"){
            print("removeValue = \(removeValue)")
        }
        print("delete the newDictionary is \(airports)")
        // 也可以将键对应的值置为nil来删除键值对
        airports["TYO"] = nil
       print("delete the newDictionary is \(airports)")
        
       // 将字典所有键和值放在一个Array中
        let airKeys = Array(airports.keys)
        let airValues = Array(airports.values)
        print(airKeys)
        print(airValues)
     
        
    }
    func testArray (){
        //数组的创建与初始化
        var someInts = [Int]()
        someInts.append(2)
        print("数组的创建与初始化 \(someInts)")
        someInts = []//现在成为了一个空数组，但其类型仍然是Int[]
        print("数组的创建与初始化 \(someInts)")
        // Swift数组还提供了一个生成若干个重复元素组成的数组的初始化函数
        let someseond = [Double](count: 3, repeatedValue: 0.0)
        print("一个生成若干个重复元素组成的数组的初始化函数\(someseond)")
        
        
        
        // 数组的声明
        var arrayOne: [String] = ["fu","zong","jian"]
        let arrayTwo = ["egg","milk","pig"]
        print("the arrayOne contains \(arrayOne.count) items the arrayTwo contains \(arrayTwo.count) items" )
        
        // 数组的存取和修改
        
        // 使用Boolean型的isEmpty属性，可以快速检查count属性是否为0：
        if arrayOne.isEmpty {
            print("empty")
        }else{
            print("there is something")
        }
        
        //往数组的末尾添加一个元素，可以调用数组的append方法：
        arrayOne.append("dayday")
        print("arrayOne.append == \(arrayOne)")
        
        // 使用下标语法取值
        let second = arrayOne[2]
        print("使用下标语法取值arrayOne[2]= \(second)")
        
        //通过下标索引修改已经存在的值
        arrayOne[1] = "up"
        print("通过下标索引修改已经存在的值\(arrayOne)")
        
        //一次性修改指定范围的值
        arrayOne[1...2] = ["one","two"]
        print("一次性修改指定范围的值 \(arrayOne)")
        
        //将元素插入到指定位置(该位置及该位置后面的值依次后移)
        arrayOne.insert("perfect", atIndex: 2)
        print("将元素插入到指定位置 \(arrayOne)")
        
        // 删除指定位置的值
        let removeItem = arrayOne.removeAtIndex(0)
        let firstItem = arrayOne[0]
        print("删除指定位置的值  removeItem = \(removeItem)\n firstItem = \(firstItem)\n arrayOne = \(arrayOne)")
        
        // 数据的迭代访问
        for item in arrayOne{
            print(item)
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
