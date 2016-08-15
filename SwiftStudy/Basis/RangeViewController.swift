//
//  RangeViewController.swift
//  SwiftBasisStudy
//
//  Created by 陈舒澳 on 16/5/16.
//  Copyright © 2016年 speeda. All rights reserved.
//

import UIKit

class RangeViewController: SuperViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        subString()
        // Do any additional setup after loading the view.
    }
    func subString(){
        let sub = "fuzongjian"
        let index1 = sub.startIndex.advancedBy(3)
        let subStr1 = sub.substringFromIndex(index1)//从第三个位置（包括第三个）开始往后截取
        
        let index2 = sub.endIndex.advancedBy(-3)// 从后往前截取（数字的值为负数）
        let subStr2 = sub.substringToIndex(index2)
        
        let range = Range<String.Index>(start: index1, end: index2)// 截取中间的字符
        let subStr3 = sub.substringWithRange(range)
        print("---\(subStr1)---\(subStr2)---\(subStr3)")
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
