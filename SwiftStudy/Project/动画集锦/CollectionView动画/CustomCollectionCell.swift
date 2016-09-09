//
//  CustomCollectionCell.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/9/9.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class CustomCollectionCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(iconImageView)
    }
    var indexStr : String?{
        didSet{
            print("-----" + indexStr!)
            iconImageView.image = UIImage.init(named: "\(indexStr!)")
        }
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        contentView.addSubview(iconImageView)
        fatalError("init(coder:) has not been implemented")
    }
    // 懒加载
    private lazy var iconImageView: UIImageView = {
       let imageView = UIImageView.init(frame: CGRectMake(0, 0, self.frame.size.width, self.frame.size.height))
        return imageView
    }()
}
