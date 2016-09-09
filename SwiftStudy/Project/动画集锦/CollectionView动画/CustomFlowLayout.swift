//
//  CustomFlowLayout.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/9/9.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class CustomFlowLayout: UICollectionViewFlowLayout {
    override func prepareLayout() {
        super.prepareLayout()
        itemSize = CGSizeMake(150, 150)
        scrollDirection = UICollectionViewScrollDirection.Horizontal
        self.sectionInset = UIEdgeInsetsMake(0, (self.collectionView!.frame.size.width - self.itemSize.width) * 0.5, 0, (self.collectionView!.frame.size.width - self.itemSize.width) * 0.5)
    }
    override func shouldInvalidateLayoutForBoundsChange(newBounds: CGRect) -> Bool {
        return true
    }
    override func layoutAttributesForElementsInRect(rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let array = super.layoutAttributesForElementsInRect(rect)
        let center = self.collectionView!.frame.size.width * 0.5 + self.collectionView!.contentOffset.x
        for atts in array! {
            let space = abs(atts.center.x - center)
            let scale = 1 - space / self.collectionView!.frame.size.width
            atts.transform = CGAffineTransformMakeScale(scale, scale)
        }
        return array!
    }
    override func targetContentOffsetForProposedContentOffset(proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
        return  self.CalculatethefinalLocationOfTheStay(proposedContentOffset) { (arr) in
            let  centerX  = proposedContentOffset.x + self.collectionView!.frame.size.width / 2
            var  minSpace = MAXFLOAT
            for attrs in arr {
                if (abs(minSpace) > abs(Float(attrs.center.x ) - Float(centerX) )) {
                    minSpace = Float(attrs.center.x ) - Float(centerX)
                }
            }
            return minSpace
        }
    }
    
    func CalculatethefinalLocationOfTheStay(pContentOffset: CGPoint,finish: ((arr : NSArray) -> (Float))) -> CGPoint{
        var rect = CGRect()
        var pro = CGPoint()
        rect.origin.y = 0;
        rect.origin.x = pContentOffset.x;
        rect.size = self.collectionView!.frame.size;
        let attsArray = super.layoutAttributesForElementsInRect(rect)
        let  minS =  finish(arr: attsArray!)
        pro = pContentOffset
        pro.x += CGFloat(minS)
        return pro
    }
    
}
