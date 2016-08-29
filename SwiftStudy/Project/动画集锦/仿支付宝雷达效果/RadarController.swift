//
//  RadarController.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/15.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class RadarController: SuperViewController {
    var radar: RadarView?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.init(red: 23/255.0, green: 26/255.0, blue: 40/255.0, alpha: 1)
        
        radar = RadarView.init(frame: CGRectMake(100, 100, 100, 100))
        radar!.backgroundColor = UIColor.init(red: 23/255.0, green: 26/255.0, blue: 40/255.0, alpha: 1)
        radar!.center = self.view.center
        radar!.normalImage = UIImage(named: "press-to")
        radar!.selectImage = UIImage(named: "press-to-h")
        self.view.addSubview(radar!)
        
                // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        radar?.isStart = true
    }
    override func viewWillDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        radar?.isStart = false
    }
    override func backButtonClicked(sender:UIButton) {
        self.navigationController?.popViewControllerAnimated(false)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
