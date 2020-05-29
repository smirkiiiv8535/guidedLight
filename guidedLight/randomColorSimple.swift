//
//  randomColorSimple.swift
//  guidedLight
//
//  Created by 林祐辰 on 2020/5/26.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit

class randomColorSimple: UIViewController {
        
      var number = 0
          
           override func viewDidLoad() {
                 super.viewDidLoad()
                 navigationController?.isNavigationBarHidden = false
                  palette.shuffle()
             }
             
                 var palette =
                    [ UIColor(displayP3Red: 148/255, green: 0, blue: 211/255, alpha: 1),
                      UIColor(displayP3Red: 75/255, green: 0, blue: 130/255, alpha: 1),
                      UIColor(displayP3Red: 0, green: 0, blue: 1, alpha: 1),
                      UIColor(displayP3Red: 0, green: 1, blue: 0, alpha: 1),
                      UIColor(displayP3Red: 1, green: 1, blue: 0, alpha: 1),
                      UIColor(displayP3Red: 1, green: 127/255, blue: 0, alpha: 1),
                      UIColor(displayP3Red: 1, green: 0, blue: 0, alpha: 1)]

             
          override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            
            if(number<6){
            number += 1
            self.view.backgroundColor = palette[number]
            }else if(number>=6){
              number = 0
              palette.shuffle()
            }            
        }
    
          


//
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
