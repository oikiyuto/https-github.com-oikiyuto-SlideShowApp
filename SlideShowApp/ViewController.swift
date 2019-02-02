//
//  ViewController.swift
//  SlideShowApp
//
//  Created by yutos on 2019/01/31.
//  Copyright © 2019 yutos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageBox: UIImageView!
   
    var count:Int = 0
    var timer = Timer()
    
    var tapCount:Int = 0

    @IBOutlet weak var backoutlet: UIButton!
    @IBOutlet weak var nextoutlet: UIButton!
    
    @IBOutlet weak var slideImage: UIImageView!

    let image0 = UIImage(named: "image0")
    let image1 = UIImage(named: "image1")
    let image2 = UIImage(named: "image2")
    var imageSlideBox = [UIImage]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        imageSlideBox = [image0!,image1!,image2!]
        slideImage.image = imageSlideBox[0]
        
      

        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let imageMain : ImageMain = segue.destination as! ImageMain
        
        imageMain.imageCount = count
        
        
        
    }
    
    @IBAction func imageNext(_ sender: Any) {
        
        if count > 1{
            count = 0
        }else{
        count += 1
        }
        slideImage.image = imageSlideBox[count]
        
     }

    @IBAction func imageBack(_ sender: Any) {
        
        if count <
            1 {
            count = 2
        }else{
            count -= 1
        }
        slideImage.image = imageSlideBox[count]
    }
    
    @IBAction func imageTimer(_ sender: Any) {
        
        tapCount += 1
        if tapCount % 2 == 1{
            
            backoutlet.isEnabled = false
            nextoutlet.isEnabled = false
            
            
        timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true, block: ({ (timer) in
            
            if self.count > 1{
                self.count = 0
            }else{
                self.count += 1
            }
            self.slideImage.image = self.imageSlideBox[self.count]
            
            })
            )}else{
            
            backoutlet.isEnabled = true
            nextoutlet.isEnabled = true
            
            self.timer.invalidate()
            
        }
        
        

    }

    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
}
