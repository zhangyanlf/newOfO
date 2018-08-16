//
//  HomeViewController.swift
//  newOfO
//
//  Created by 张彦林 on 2018/8/16.
//  Copyright © 2018年 zhangyanlf. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var panelView: UIView!
    
    @IBOutlet weak var arrowBtn: UIButton!
    //面板展开转态
    var isPanerViewCollapsed  = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //设置panelView内切圆
        panelView.layer.cornerRadius = self.view.frame.width;
    }

    @IBAction func clickArrowbtn(_ sender: UIButton) {
        morePanelView()
    }
    
    
    func morePanelView() {
        let deltaY = panelView.frame.height / 4.5
        
        if isPanerViewCollapsed {
            arrowBtn.setImage(#imageLiteral(resourceName: "arrowup"), for: .normal)
            UIView.animate(withDuration: 0.3) {
                self.panelView.transform = CGAffineTransform(translationX: 0, y: deltaY)
            }
            
            
        } else {
            arrowBtn.setImage(#imageLiteral(resourceName: "arrowdown"), for: .normal)
            UIView.animate(withDuration: 0.3) {
                self.panelView.transform = .identity
            }
        }
        isPanerViewCollapsed = !isPanerViewCollapsed
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}
