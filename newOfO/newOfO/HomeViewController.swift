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
    
    @IBOutlet weak var startBtn: UIButton!
    
    @IBOutlet weak var tabbarStackView: UIStackView!
    
    @IBOutlet weak var postionStackView: UIStackView!
    
    @IBOutlet weak var bottomToPanelCons: NSLayoutConstraint!
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
    
    @IBAction func drag(_ sender: UIPanGestureRecognizer) {
        
        switch sender.state {
        case .changed:
            let translation = sender.translation(in: view)
            if translation.y != 0 {
                morePanelView()
            }
            
        default:
            break
        }
    }
    
    
    func morePanelView() {
        let deltaY = panelView.frame.height / 4.5
        let deltaYStartBtn = panelView.frame.height / 4
        
        
        if isPanerViewCollapsed {
            arrowBtn.setImage(#imageLiteral(resourceName: "arrowup"), for: .normal)
            UIView.animate(withDuration: 0.3) {
                self.panelView.transform = CGAffineTransform(translationX: 0, y: deltaY)
                self.startBtn.transform = CGAffineTransform(translationX: 0, y: deltaYStartBtn)
                self.tabbarStackView.transform = CGAffineTransform(translationX: 0, y: deltaY)
                self.panelView.alpha = 0.8
                self.bottomToPanelCons.constant -= deltaY
                self.view.layoutIfNeeded()
            }
            
            
            
        } else {
            arrowBtn.setImage(#imageLiteral(resourceName: "arrowdown"), for: .normal)
            UIView.animate(withDuration: 0.3) {
                self.panelView.transform = .identity
                self.startBtn.transform = .identity
                self.panelView.alpha = 1
                self.bottomToPanelCons.constant += deltaY
                self.view.layoutIfNeeded()
                
            }
            UIView.animate(withDuration: 0.5) {
                self.tabbarStackView.transform = .identity
            }
        }
        isPanerViewCollapsed = !isPanerViewCollapsed
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}
