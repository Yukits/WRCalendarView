//
//  ScheduleWeekColumnHeader.swift
//  Argos
//
//  Created by wayfinder on 2017. 4. 2..
//  Copyright © 2017년 Tong. All rights reserved.
//

import UIKit
import DateToolsSwift

class WRColumnHeader: UICollectionReusableView {
    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var weekdayLbl: UILabel!
    let calendar = Calendar.current
    let dateFormatter = DateFormatter()
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        dateFormatter.locale = Locale(identifier: "en_US")
    }
    
    var date: Date? {
        didSet {
            if let date = date {
                let weekday = calendar.component(.weekday, from: date) - 1
                
                dayLbl.text = String(calendar.component(.day, from: date))
                weekdayLbl.text = dateFormatter.shortWeekdaySymbols[weekday].uppercased()
                weekdayLbl.textColor = WRColumnHeader.weekdayLabel
                
                if date.isSameDay(date: Date()) {
                    dayLbl.textColor = WRColumnHeader.todayLabel
                    backgroundColor = WRColumnHeader.today
                } else {
                    switch weekday {
                    case 0: // sunday
                        dayLbl.textColor = WRColumnHeader.sunLabel
                    case 6:
                        dayLbl.textColor = WRColumnHeader.satLabel
                    default:
                        dayLbl.textColor = WRColumnHeader.basicLabel
                    }
                    backgroundColor = WRColumnHeader.color
                }
            }
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        dayLbl.text = ""
        weekdayLbl.text = ""
    }
    
    static var sunLabel :UIColor = UIColor(hexString: "fe4646")!
    static var satLabel :UIColor = UIColor(hexString: "3573ff")!
    static var basicLabel :UIColor = UIColor(hexString: "aaaaaa")!
    static var color :UIColor = .white
    static var today :UIColor = UIColor(hexString: "f5f8fd")!
    static var todayLabel :UIColor = UIColor(hexString: "1398f2")!
    static var weekdayLabel :UIColor = UIColor(hexString: "333333")!
}
