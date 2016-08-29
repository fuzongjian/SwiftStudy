//
//  Cat.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/19.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class Cat: NSObject {
    var name : String?
    var age : Int?
    
    // 重写系统的方法 
    override init() {
        name = "cat"
        age = 5
        //当我们重写一个类的构造方法时，系统会悄悄的调用 super.init()
        super.init()
    }
    
    // 自定义构造方法
    init(name: String,age: Int){
        self.name = name;
        self.age = age
    }
    
    
    // setter方法
    var sex: String?{
        didSet{
           print("----" + sex!)
        }
    }
    
    //  description方法
    override var description: String{
        return "name = " + name! + "  age = " + String(age)
    }
}
