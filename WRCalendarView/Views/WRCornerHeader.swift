//
//  ScheduleCornerHeader.swift
//  RVCalendarWeekView
//
//  Created by wayfinder on 2017. 4. 6..
//  Copyright © 2017년 revo. All rights reserved.
//

import UIKit

class WRCornerHeader: UICollectionReusableView {
    static var color: UIColor = .white
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = WRCornerHeader.color
//        let gridThickness: CGFloat = UIScreen.main.scale == 2 ? 0.5 : 1.0
//        addBorder(edge: .bottom, color: ColorUtil.uiColorFromHex("dadada"), borderWidth: gridThickness)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
