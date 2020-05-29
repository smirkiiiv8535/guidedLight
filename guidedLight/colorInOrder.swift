//
//  colorInOrder.swift
//  guidedLight
//
//  Created by 林祐辰 on 2020/5/26.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit

class colorInOrder: UIViewController {
      
     var number = 0
    
     override func viewDidLoad() {
           super.viewDidLoad()
           navigationController?.isNavigationBarHidden = false
       }
       
           let palette =
               [UIColor(displayP3Red: 148/255, green: 0, blue: 211/255, alpha: 1),
                UIColor(displayP3Red: 75/255, green: 0, blue: 130/255, alpha: 1),
                UIColor(displayP3Red: 0, green: 0, blue: 1, alpha: 1),
                UIColor(displayP3Red: 0, green: 1, blue: 0, alpha: 1),
                UIColor(displayP3Red: 1, green: 1, blue: 0, alpha: 1),
                UIColor(displayP3Red: 1, green: 127/255, blue: 0, alpha: 1),
                UIColor(displayP3Red: 1, green: 0, blue: 0, alpha: 1)]

       
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      number+=1
      switch number%7{
       case 0:
        self.view.backgroundColor = palette[0]
       case 1:
        self.view.backgroundColor = palette[1]
       case 2:
        self.view.backgroundColor = palette[2]
       case 3:
        self.view.backgroundColor = palette[3]
       case 4:
        self.view.backgroundColor = palette[4]
       case 5:
        self.view.backgroundColor = palette[5]
     default :
       self.view.backgroundColor = palette[6]
    }
  }
    
    
}
