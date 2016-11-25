//
//  AnimalViewController.swift
//  Animal Box
//
//  Created by Dulio Denis on 11/24/16.
//  Copyright © 2016 Dulio Denis. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            print("Shake")
        }
    }
    
}
