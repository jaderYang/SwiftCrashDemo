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
        testColdStartUp()
    }
    
    func testColdStartUp() {
        navigationController?.pushViewController(TestViewController(), animated: false)
        navigationController?.pushViewController(TestViewController(), animated: true)
        navigationController?.pushViewController(TestViewController(), animated: true)
    }

}

