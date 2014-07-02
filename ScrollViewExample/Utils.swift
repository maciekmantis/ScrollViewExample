//
//  Utils.swift
//  ScrollViewExample
//
//  Created by Maciek on 02.07.2014.
//  Copyright (c) 2014 Maciej Scisłowski. All rights reserved.
//

import UIKit

class Utils {
    
    func newImageView(paramImage: UIImage, paramFrame: CGRect) -> UIImageView {
        let result: UIImageView = UIImageView(frame: paramFrame)
        result.contentMode = UIViewContentMode.ScaleAspectFit
        result.image = paramImage
        return result
    }
    
}
