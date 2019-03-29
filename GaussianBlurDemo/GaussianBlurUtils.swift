//
//  GaussianBlurUtil.swift
//  GaussianBlurDemo
//
//  Created by apple_mini on 2019/3/29.
//  Copyright © 2019年 Scode. All rights reserved.
//

import Foundation
import UIKit


func filterGaussianBlur(_ value: Double,imageName img: String,Rect rect:CGRect)->UIImage?
{
    if let image = UIImage.init(named: img) , let gaussianBlur = CIFilter.init(name: "CIGaussianBlur"){
        let cImage = CIImage(cgImage: image.cgImage!)
        gaussianBlur.setValue(cImage, forKey: "inputImage")
        gaussianBlur.setValue(value, forKey: "inputRadius")
        let result = gaussianBlur.value(forKey: "outputImage") as! CIImage
        let context = CIContext(options: nil)
        let imageRef = context.createCGImage(result, from: rect)
        let outputImage = UIImage(cgImage: imageRef!)
        return outputImage
    }
    return nil
}
