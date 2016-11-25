//
//  AnimalViewController.swift
//  Animal Box
//
//  Created by Dulio Denis on 11/24/16.
//  Copyright © 2016 Dulio Denis. All rights reserved.
//

import UIKit
import AVFoundation

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var player = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeAudio()
    }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            rotateBox()
            player.play()
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
    
    
    func initializeAudio() {
        let cow = Bundle.main.path(forResource: "Cow", ofType: "m4a")?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        
        do {
            let cowURL = URL(string: cow!)
            try player = AVAudioPlayer(contentsOf: cowURL!)
            
        } catch {
            print("Error Initializing Audio")
        }
    }
    
}
