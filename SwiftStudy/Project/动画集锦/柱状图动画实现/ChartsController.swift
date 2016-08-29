//
//  ChartsController.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/29.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class ChartsController: SuperViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let chart = ChartView.init(frame: CGRectMake(10, 100, SCREEN_WIDTH - 20, 200))
        chart.backgroundColor = UIColor.orangeColor()
        chart.layer.cornerRadius = 10;
        chart.layer.masksToBounds = true
        self.view.addSubview(chart)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    deinit{
        print("循环引用")
    }
//    - (void)dealloc
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
