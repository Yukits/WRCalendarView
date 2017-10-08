//
//  WRTodayBackground.swift
//
//  Created by wayfinder on 2017. 4. 5..
//  Copyright © 2017년 revo. All rights reserved.
//

import UIKit

class WRTodayBackground: UICollectionReusableView {
    static var color: UIColor = UIColor(hexString: "F5F8FD")!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = WRTodayBackground.color
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
