//
//  ViewController.swift
//  CrashDemo
//
//  Created by jaderyang on 2020/6/5.
//  Copyright © 2020 iherb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var flag = true
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "view controller"
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        if flag {
//            testColdStartUp()
//            flag = !flag
//        }
    }
    
    func testColdStartUp() {
        navigationController?.pushViewController(TestViewController(), animated: true)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.navigationController?.pushViewController(TestViewController(), animated: true)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.navigationController?.pushViewController(TestViewController(), animated: true)
        }
    }

}

