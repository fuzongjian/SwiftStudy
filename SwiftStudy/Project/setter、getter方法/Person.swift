//
//  Person.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/19.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class Person: NSObject {
    var _name : String?
    var name : String?{
        set{
            _name = newValue
        }get{
            return _name
        }
    }
}

