//
//  photoInOrder.swift
//  guidedLight
//
//  Created by 林祐辰 on 2020/5/26.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit

class photoInOrder: UIViewController {
    
    var number = 0
    
    @IBOutlet weak var showImage: UIImageView!
    
    let album = ["aurora","beach","bright","cliff","forrest","road","stars","tower","village"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        showImage.backgroundColor = UIColor(patternImage: UIImage(named: "\(String(describing: album[0])).png")!)
        showImage.contentMode = .scaleAspectFill
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        number+=1
        changeImage()
    }
    
    
    func changeImage(){
        if(number<9){
         showImage.backgroundColor = UIColor(patternImage: UIImage(named: "\(String(describing: album[number])).png")!)
        }else{
            number = 0
         showImage.backgroundColor = UIColor(patternImage: UIImage(named: "\(String(describing: album[number])).png")!)
        }
        
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
