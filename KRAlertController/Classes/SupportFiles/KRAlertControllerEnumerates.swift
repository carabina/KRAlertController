//
//  KRAlertControllerEnumerates.swift
//  KRAlertController
//
//  Copyright © 2016年 Krimpedance. All rights reserved.
//

import UIKit


public enum KRAlertControllerStyle {
    case Alert, ActionSheet
}

public enum KRAlertActionStyle: Int {
    case Default
    case Cancel
    case Destructive
}

enum KRAlertLabelStyle {
    case Title, Message
}

enum KRButtonLayoutType {
    case Vertical
    case VerticalTable
    case Horizontal
}

public enum KRAlertControllerType {
    case Normal
    case Success(icon: Bool)
    case Information(icon: Bool)
    case Warning(icon: Bool)
    case Error(icon: Bool)
    case Edit(icon: Bool)
    case Authorize(icon: Bool)

    var textColor: UIColor {
        switch self {
        case .Normal: return .blackColor()
        case .Success: return UIColor ( red: 0.1843, green: 0.3922, blue: 0.1804, alpha: 1.0 )
        case .Information: return UIColor ( red: 0.1922, green: 0.4392, blue: 0.5608, alpha: 1.0 )
        case .Warning: return UIColor ( red: 0.4627, green: 0.3529, blue: 0.1765, alpha: 1.0 )
        case .Error: return UIColor ( red: 0.5882, green: 0.1882, blue: 0.1961, alpha: 1.0 )
        case .Edit: return UIColor ( red: 0.5176, green: 0.2431, blue: 0.5922, alpha: 1.0 )
        case .Authorize: return UIColor ( red: 0.5961, green: 0.3373, blue: 0.6588, alpha: 1.0 )
        }
    }
    
    var buttonBackgroundColor: UIColor {
        switch self {
        case .Normal: return UIColor ( red: 0.8902, green: 0.8902, blue: 0.898, alpha: 1.0 )
        case .Success: return UIColor ( red: 0.8745, green: 0.9412, blue: 0.8471, alpha: 1.0 )
        case .Information: return UIColor ( red: 0.851, green: 0.9294, blue: 0.9686, alpha: 1.0 )
        case .Warning: return UIColor ( red: 0.9882, green: 0.9725, blue: 0.8902, alpha: 1.0 )
        case .Error: return UIColor ( red: 0.949, green: 0.8706, blue: 0.8706, alpha: 1.0 )
        case .Edit: return UIColor ( red: 0.9333, green: 0.8549, blue: 0.949, alpha: 1.0 )
        case .Authorize: return UIColor ( red: 0.9333, green: 0.8549, blue: 0.949, alpha: 1.0 )
        }
    }
    
    var iconColor: UIColor {
        switch self {
        case .Normal: return .blackColor()
        case .Success: return UIColor ( red: 0.8039, green: 0.898, blue: 0.7412, alpha: 1.0 )
        case .Information: return UIColor ( red: 0.7373, green: 0.8863, blue: 0.9294, alpha: 1.0 )
        case .Warning: return UIColor ( red: 0.949, green: 0.902, blue: 0.7529, alpha: 1.0 )
        case .Error: return UIColor ( red: 0.9294, green: 0.7725, blue: 0.7725, alpha: 1.0 )
        case .Edit: return UIColor ( red: 0.9059, green: 0.8078, blue: 0.9294, alpha: 1.0 )
        case .Authorize: return UIColor ( red: 0.9059, green: 0.8078, blue: 0.9294, alpha: 1.0 )
        }
    }
    
    var isShowIcon: Bool {
        switch self {
        case let .Success(icon: isShow): return isShow
        case let .Information(icon: isShow): return isShow
        case let .Warning(icon: isShow): return isShow
        case let .Error(icon: isShow): return isShow
        case let .Edit(icon: isShow): return isShow
        case let .Authorize(icon: isShow): return isShow
        default: return false
        }
    }
    
    func getIconLayer(rect: CGRect) -> CAShapeLayer {
        let layer = CAShapeLayer()
        layer.frame = rect
        layer.path = KRAlertIconPath.getPath(self, size: rect.size)
        layer.fillColor = iconColor.CGColor
        return layer
    }
}