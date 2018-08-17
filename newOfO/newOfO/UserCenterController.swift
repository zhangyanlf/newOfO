//
//  UserCenterController.swift
//  newOfO
//
//  Created by 张彦林 on 2018/8/16.
//  Copyright © 2018年 zhangyanlf. All rights reserved.
//

import UIKit

class UserCenterController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    

    let menus = ["我的行程", "我的钱包", "邀请好友" ,"兑优惠券", "我的客服"]
    let images = ["icon_slide_trip2", "icon_slide_wallet2", "icon_slide_invite2", "icon_slide_coupon2", "icon_slide_usage_guild2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.menus.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserCell
        cell.menuImageView.image = UIImage(named: self.images[indexPath.row])
        cell.neunLabel.text = self.menus[indexPath.row]
        return cell
    }
    

    @IBAction func closeBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
