//
//  UIViewLayerHelper.swift
//  newOfO
//
//  Created by 张彦林 on 2018/8/16.
//  Copyright © 2018年 zhangyanlf. All rights reserved.
//

import UIKit


@IBDesignable  //在Sb中及时看到效果
class ArcView: UIView {
    
}

//扩展
extension UIView {
    @IBInspectable //可以在Sb中直接设置
    
    var cornerRadius : CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    //阴影圆角
    @IBInspectable
    var shadowRadius : CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    //阴影偏移
    @IBInspectable
    var shadowOffset : CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    //阴影颜色
    @IBInspectable
    var shadowColor : UIColor? {
        get {
            return layer.shadowColor != nil ?  UIColor(cgColor: layer.shadowColor!) : nil
        }
        set {
            layer.shadowColor = newValue?.cgColor
        }
    }
    
    //阴影透明度
    @IBInspectable
    var shadowOpacity : Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    
    
}
