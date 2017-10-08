//
//  WRRowHeaderBackground.swift
//
//  Created by wayfinder on 2017. 4. 5..
//  Copyright © 2017년 revo. All rights reserved.
//

import UIKit

class WRRowHeaderBackground: UICollectionReusableView {
    static var color: UIColor = .white
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = WRRowHeaderBackground.color
//        let gridThickness: CGFloat = UIScreen.main.scale == 2 ? 0.5 : 1.0
//        addBorder(edge: .right, color: ColorUtil.uiColorFromHex("dadada"), borderWidth: gridThickness)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
