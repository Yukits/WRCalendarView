//
//  WRGridLine
//
//  Created by wayfinder on 2017. 4. 6..
//  Copyright © 2017년 revo. All rights reserved.
//

import UIKit

class WRGridLine: UICollectionReusableView {
    static var color: UIColor = UIColor(hexString: "dadada")!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = WRGridLine.color
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
