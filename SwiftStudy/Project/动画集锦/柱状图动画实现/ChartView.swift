//
//  ChartView.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/29.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class ChartView: UIView {
    var textArray : NSArray = ["一","二","三","四","五","六","七"]
    var height : CGFloat = 0
    var ordinaryHeightArray : NSMutableArray = [0,0,0,0,0,0,0]
    var heightArray : NSMutableArray = [10,30,70,20,50,40,60]
    var numberLableArray = NSMutableArray()
    
    var margin : CGFloat = 20
    var itemW : CGFloat = 0
    var itemH : CGFloat = 0
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configChartViewUI()
    }
    func configChartViewUI() {
        itemW = (self.bounds.size.width - 8.0 * margin) / 7.0
        for i in 0 ..< textArray.count {
            // 下标注
            let bottomLable = UILabel.init(frame: CGRectMake(margin + (margin + itemW)*CGFloat(i), self.bounds.size.height - 20, itemW, 20))
            bottomLable.text = textArray.objectAtIndex(i) as? String
            bottomLable.textAlignment = .Center;
            bottomLable.textColor = UIColor.whiteColor()
            bottomLable.font = UIFont.boldSystemFontOfSize(13)
            self.addSubview(bottomLable)
            
            // 上标注
            let topLable = UILabel.init(frame: CGRectMake(margin + (margin + itemW)*CGFloat(i), self.bounds.size.height - margin * 2, itemW, margin))
            topLable.font = UIFont.systemFontOfSize(12)
            topLable.textAlignment = .Center
            topLable.text = String(format: "%.1f",CGFloat(ordinaryHeightArray[i] as! NSNumber))
            topLable.textColor = UIColor.whiteColor()
            self.addSubview(topLable)
            numberLableArray.addObject(topLable)
            
        }
        NSTimer.scheduledTimerWithTimeInterval(0.05, target: self, selector: #selector(timerCount(_:)), userInfo: nil, repeats: true)
    }
    func timerCount(timer:NSTimer) {
        if (self.height > CGFloat((heightArray.valueForKeyPath("@max.floatValue")?.floatValue)!)) {
            timer.fireDate = NSDate.distantFuture()
        }else{
            self.height += 0.5
            for i in 0 ..< ordinaryHeightArray.count {
                if (CGFloat(ordinaryHeightArray[i] as! NSNumber) < CGFloat(heightArray[i] as! NSNumber)) {
                    
                    //重画数据更新
                    var oldH = CGFloat(ordinaryHeightArray[i] as! NSNumber)
                    oldH += 1
                    ordinaryHeightArray.removeObjectAtIndex(i)
                    ordinaryHeightArray.insertObject(oldH, atIndex: i)
                    
                    // 更新数据显示
                    let lable : UILabel = numberLableArray[i] as! UILabel
                    lable.frame = CGRectMake(margin + (margin + itemW)*CGFloat(i), self.bounds.size.height - margin * 2 - oldH, itemW, margin)
                    lable.text = String(format: "%.f",oldH)
                    numberLableArray.removeObjectAtIndex(i)
                    numberLableArray.insertObject(lable, atIndex: i)
                    
                }
            }
            self.setNeedsDisplay()
        }
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // 绘画
    override func drawRect(rect: CGRect) {
        for i in 0 ..< ordinaryHeightArray.count {
            let path = UIBezierPath(rect:CGRectMake(margin + (margin + itemW)*CGFloat(i) + itemW * 0.5, self.bounds.size.height - margin, 0, -CGFloat(ordinaryHeightArray[i] as! NSNumber)))
            path.lineWidth = itemW
            UIColor.grayColor().setStroke()
            path.stroke()
        }
    }


}
