//
//  Color.swift
//  DribbbleReader
//
//  Created by naoyashiga on 2015/05/17.
//  Copyright (c) 2015年 naoyashiga. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    class func hexStr (_ hexStr : NSString, alpha : CGFloat) -> UIColor {
        var hexStr = hexStr
        hexStr = hexStr.replacingOccurrences(of: "#", with: "") as NSString
        let scanner = Scanner(string: hexStr as String)
        var color: UInt32 = 0
        if scanner.scanHexInt32(&color) {
            let r = CGFloat((color & 0xFF0000) >> 16) / 255.0
            let g = CGFloat((color & 0x00FF00) >> 8) / 255.0
            let b = CGFloat(color & 0x0000FF) / 255.0
            return UIColor(red:r,green:g,blue:b,alpha:alpha)
        } else {
            print("invalid hex string", terminator: "")
            return UIColor.white;
        }
    }
    
    class func navigationBarTitleTextColor() -> UIColor {
        return UIColor.hexStr("ffffff", alpha: 1)
    }
    
    class func navigationBarBackgroundColor() -> UIColor {
        return UIColor.hexStr("222222", alpha: 0.85)
    }
    
    class func scrollMenuBackgroundColor() -> UIColor {
        return UIColor.hexStr("d90000", alpha: 1)
    }
    
    class func viewBackgroundColor() -> UIColor {
        return UIColor.hexStr("ffffff", alpha: 1)
    }
    
    class func selectionIndicatorColor() -> UIColor {
        return UIColor.hexStr("ffffff", alpha: 1)
    }
    
    class func bottomMenuHairlineColor() -> UIColor {
        return UIColor.hexStr("F06292", alpha: 1)
    }
    
    class func selectedMenuItemLabelColor() -> UIColor {
        return UIColor.hexStr("ffffff", alpha: 1)
    }
    
    class func unselectedMenuItemLabelColor() -> UIColor {
        return UIColor.hexStr("bababa", alpha: 1)
    }
    
    class func cellLabelColor() -> UIColor {
        return UIColor.hexStr("000000", alpha: 1)
    }
}
