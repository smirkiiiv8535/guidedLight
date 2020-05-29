//
//  twoColorChange.swift
//  guidedLight
//
//  Created by 林祐辰 on 2020/5/26.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit

class twoColorChange: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        // Do any additional setup after loading the view.
    }
    
    var checkButton = true
    @IBAction func changeColor(_ sender: Any) {
        checkButton = !checkButton
        if !checkButton{
            self.view.backgroundColor = UIColor.black
        }else{
            self.view.backgroundColor = UIColor.white
        }
    }
    
}
