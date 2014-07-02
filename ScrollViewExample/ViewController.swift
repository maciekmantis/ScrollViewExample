//
//  ViewController.swift
//  ScrollViewExample
//
//  Created by Maciek on 02.07.2014.
//  Copyright (c) 2014 Maciej Scisłowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let utils: Utils = Utils()
    var scrollView: UIScrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let iMac: UIImage = UIImage(named: "imac.jpg")
        let macbookAir: UIImage = UIImage(named: "macbookair.jpg")
        let macbookPro: UIImage = UIImage(named: "macbookpro.jpg")
        
        let scrollViewRect: CGRect = self.view.bounds
        scrollView = UIScrollView(frame: scrollViewRect)
        scrollView.pagingEnabled = true
        scrollView.contentSize = CGSizeMake(scrollViewRect.size.width * 3, scrollViewRect.size.height)
        self.view.addSubview(scrollView)
        
        var imageViewRect: CGRect = self.view.bounds
        let iMacImageView: UIImageView = utils.newImageView(iMac, paramFrame: imageViewRect)
        scrollView.addSubview(iMacImageView)
        
        imageViewRect.origin.x += imageViewRect.size.width
        let macbookAirImageView: UIImageView = utils.newImageView(macbookAir, paramFrame: imageViewRect)
        scrollView.addSubview(macbookAirImageView)
        
        imageViewRect.origin.x += imageViewRect.size.width
        let macbookProImageView: UIImageView = utils.newImageView(macbookPro, paramFrame: imageViewRect)
        scrollView.addSubview(macbookProImageView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

