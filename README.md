# newOfO
# UIVIew设置圆角及阴影效果展示具体效果
- 首先创建Swift file 对UIView进行扩展 

``` iOS
extension UIView {
    @IBInspectable 
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
```
>  @IBInspectable  可以使设置的属性直接显示在Storyboard面板中，见项目效果：



- 属性设置可以及时在Storyboard中看到效果(当前设置View的Class设置为ArcView)
```iOS
@IBDesignable  
class ArcView: UIView {
    
}
```

> @IBDesignable  在Storyboard中及时看到效果(阴影效果)
