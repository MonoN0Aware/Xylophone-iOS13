//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        playNote()
    }
    
    func playNote() {
        // need to declare local path as url
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        // now use declared path 'url' to initialize the player
        player = AVPlayer.init(url: url!)
        // after initialization play audio its just like click on play button
        player!.play()
    }
    
}

