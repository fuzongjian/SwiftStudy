//
//  CollectionAnimationController.swift
//  SwiftStudy
//
//  Created by 付宗建 on 16/9/9.
//  Copyright © 2016年 youran. All rights reserved.
//

import UIKit

class CollectionAnimationController: SuperViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(CollectionView)
        // Do any additional setup after loading the view.
    }
    private lazy var CollectionView : UICollectionView = {
        let collection = UICollectionView(frame:CGRectMake(0, 100, SCREEN_WIDTH, 300),collectionViewLayout:CustomFlowLayout())
        collection.registerClass(CustomCollectionCell.self, forCellWithReuseIdentifier: "cell")
        collection.dataSource = self
//        collection.backgroundColor = UIColor.whiteColor()
        return collection
    }()
    var startRefresh : (() -> (NSMutableArray)){
        get{
            return{
            () -> (NSMutableArray)
                in
                let arr = NSMutableArray()
                for i in 0...9{
                    arr.addObject("\(i+1)"+".jpg")
                }
                return arr
            }
        }
    }
}
extension CollectionAnimationController : UICollectionViewDataSource{
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.startRefresh().count
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CustomCollectionCell
        let arr = self.startRefresh()
        cell.indexStr = arr[indexPath.item] as? String
        return cell
    }
}
