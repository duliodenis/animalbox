//
//  AnimalViewController.swift
//  Animal Box
//
//  Created by Dulio Denis on 11/24/16.
//  Copyright © 2016 Dulio Denis. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            rotateBox()
        }
    }
    
    
    func rotateBox() {
        UIView.animate(withDuration: 1, animations: {
            self.imageView.transform = CGAffineTransform(rotationAngle: -3)
            }) { (true) in
                UIView.animate(withDuration: 1, delay: 2, options: [], animations: {
                    self.imageView.transform = CGAffineTransform(rotationAngle: 0)
                    }, completion: nil)
        }
    }
    
}
