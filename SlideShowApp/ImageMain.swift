//
//  ImageMain.swift
//  SlideShowApp
//
//  Created by yutos on 2019/02/02.
//  Copyright © 2019 yutos. All rights reserved.
//

import UIKit

class ImageMain: UIViewController {
    
    var imageCount : Int = 0
    @IBOutlet weak var imageBig: UIImageView!
    
    let image0 = UIImage(named: "image0")
    let image1 = UIImage(named: "image1")
    let image2 = UIImage(named: "image2")
    var imageSlideBox = [UIImage]()
    
  

    override func viewDidLoad() {
        super.viewDidLoad()
          imageSlideBox = [image0!,image1!,image2!]
          imageBig.image = imageSlideBox[imageCount]

        // Do any additional setup after loading the view.
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
