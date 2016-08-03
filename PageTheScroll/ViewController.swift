//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Dave McMahon on 03/08/2016.
//  Copyright © 2016 Dave McMahon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images: [UIImageView] = [UIImageView]()
    @IBOutlet weak var scrollPane: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        let scrollWidth = scrollPane.frame.size.width
        
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            var newY: CGFloat = 0.0
            
            newX = scrollWidth/2 + scrollWidth * CGFloat(x)
            newY = (scrollPane.frame.size.height / 2)
            
            contentWidth += newX
            scrollPane.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX-75, y: newY - 75, width: 150, height: 150)
            
        }
        
        //scrollPane.clipsToBounds = false
        scrollPane.contentSize = CGSize(width: contentWidth, height: scrollPane.frame.size.height)
    }

}
