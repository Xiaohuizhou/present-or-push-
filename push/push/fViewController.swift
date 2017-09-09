//
//  fViewController.swift
//  push
//
//  Created by 周 光辉 on 2017/9/9.
//  Copyright © 2017年 周 光辉. All rights reserved.
//

import UIKit

class fViewController: UIViewController {

    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.red
        let btn = UIButton(frame: CGRect(x: 220 , y: 180, width: 80, height: 80))
        btn.setTitle("dismiss！", for: UIControlState.normal)
        btn.setTitleColor(UIColor.white, for: UIControlState.normal)
        btn.backgroundColor = UIColor.black
        btn.addTarget(self, action: #selector(btnClicked2), for: UIControlEvents.touchUpInside)
        view.addSubview(btn)
        
        let btn1 = UIButton(frame: CGRect(x: 80 , y: 180, width: 80, height: 80))
        btn1.setTitle("push！", for: UIControlState.normal)
        btn1.setTitleColor(UIColor.white, for: UIControlState.normal)
        btn1.backgroundColor = UIColor.black
        btn1.addTarget(self, action: #selector(btnClicked3), for: UIControlEvents.touchUpInside)
        view.addSubview(btn1)
        
    }
    func btnClicked2() {
        self.dismiss(animated: true) {
            
        }
    }
    
    func btnClicked3() {
        let tt = tViewController()
        //        let nav = UINavigationController.init(rootViewController: tt)
        self.navigationController? .pushViewController(tt, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
