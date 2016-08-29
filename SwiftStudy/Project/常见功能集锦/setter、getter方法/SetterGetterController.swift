//
//  SetterGetterController.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/19.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class SetterGetterController: SuperViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configSetterGetterControllerUI()
    }
    func configSetterGetterControllerUI(){
      
        view.addSubview(customView!)
        customView?.backgroundColor = UIColor.yellowColor();
        let person = Person.init()
        person.name = "fuzongjian"
        print(person.name)
        
        
        let cat = Cat.init()
        print(cat.name,cat.age)
        cat.sex = "male"
        print(cat.description)
        
        let catTwo = Cat.init(name: "王五", age: 1)
        print(catTwo.age,catTwo.name)
        
        
    }
    //懒加载
    lazy var customView : UIView? = {
        let csView  = UIView.init(frame: CGRectMake(100, 100, 100, 100))
        csView.backgroundColor = UIColor.redColor()
        csView.center = self.view.center
        return csView
    }()
}
