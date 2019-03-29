//
//  ViewController.swift
//  GaussianBlurDemo
//
//  Created by apple_mini on 2019/3/29.
//  Copyright © 2019年 Scode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let img =  filterGaussianBlur(5, imageName: "meizi.png",Rect: self.ImageView.frame)
        ImageView.image = img
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

