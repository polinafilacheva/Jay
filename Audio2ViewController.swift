//
//  Audio2ViewController.swift
//  Jay
//
//  Created by DMITRY FILACHEV on 16.06.2020.
//  Copyright © 2020 POLINA FILACEVA. All rights reserved.
//

import UIKit
import AVFoundation

class Audio2ViewController: UIViewController {
    
    var BackgroundMusic2 = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            BackgroundMusic2 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Audio2", ofType: "mp3")!))
            BackgroundMusic2.prepareToPlay()
        } catch {
            
        }
    }
    
    @IBAction func Play(_ sender: Any) {
        BackgroundMusic2.play()
    }
    
    @IBAction func Stop(_ sender: Any) {
        if BackgroundMusic2.isPlaying {
            BackgroundMusic2.stop()
        }
    }
    
    @IBAction func Restart(_ sender: Any) {
        if BackgroundMusic2.isPlaying {
            BackgroundMusic2.currentTime = 0
            BackgroundMusic2.play()
        } else {
            BackgroundMusic2.play()
        }
    }
    
}
