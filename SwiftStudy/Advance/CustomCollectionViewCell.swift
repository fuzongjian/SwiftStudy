//
//  CustomCollectionViewCell.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/8/15.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    var imageView       :UIImageView?
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:)")
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.imageView = UIImageView(frame: CGRectMake(0, 0, 90, 90))
        self.imageView?.contentMode = .ScaleToFill
        self.contentView.addSubview(self.imageView!)
    }
}
