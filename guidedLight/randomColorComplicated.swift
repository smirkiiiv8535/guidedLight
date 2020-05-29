//
//  randomColorComplicated.swift
//  guidedLight
//
//  Created by 林祐辰 on 2020/5/26.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit

class randomColorComplicated: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.isMultipleTouchEnabled = true
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = UIColor.init(displayP3Red: 0, green: 0, blue: 0, alpha: 1)
        navigationController?.navigationBar.tintColor = UIColor.white
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            if(touch.tapCount>0){randomColor()}
        }
    }
    
      func randomColor(){
        let randomRcolor = CGFloat.random(in : 0...1)
        let randomGcolor = CGFloat.random(in : 0...1)
        let randomBcolor = CGFloat.random(in : 0...1)
        let randomAlphaColor = CGFloat.random(in : 0.2...1.0)
        let renderColor = UIColor(red:randomRcolor,green:randomGcolor,blue:randomBcolor,alpha:randomAlphaColor)
    
        self.view.backgroundColor = renderColor
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
