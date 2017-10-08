//
//  WRCurrentTimeGridline.swift
//
//  Created by wayfinder on 2017. 4. 6..
//  Copyright © 2017년 revo. All rights reserved.
//

import UIKit

class WRCurrentTimeGridline: UICollectionReusableView {
    static var color = UIColor(hexString: "fd3935")!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = WRCurrentTimeGridline.color
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
