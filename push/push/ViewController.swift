//
//  ViewController.swift
//  push
//
//  Created by 周 光辉 on 2017/9/9.
//  Copyright © 2017年 周 光辉. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton(frame: CGRect(x: 20 , y: 80, width: 80, height: 80))
        btn.setTitle("点我啊！pre", for: UIControlState.normal)
        btn.setTitleColor(UIColor.white, for: UIControlState.normal)
        btn.backgroundColor = UIColor.black
        btn.addTarget(self, action: #selector(btnClicked), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
        
        let btn1 = UIButton(frame: CGRect(x: 20 , y: 180, width: 80, height: 80))
        btn1.setTitle("点我啊！push", for: UIControlState.normal)
        btn1.setTitleColor(UIColor.white, for: UIControlState.normal)
        btn1.backgroundColor = UIColor.black
        btn1.addTarget(self, action: #selector(btnClicked1), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn1)
        
    }
    func btnClicked() {
        let ff = fViewController()
        let nav = UINavigationController.init(rootViewController: ff)
        self .present(nav, animated: true) {
            
        }
    }
    
    func btnClicked1() {
        
        self.navigationController? .pushViewController(tViewController(), animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

