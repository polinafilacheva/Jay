//
//  AudioViewController.swift
//  Jay
//
//  Created by DMITRY FILACHEV on 15.05.2020.
//  Copyright © 2020 POLINA FILACEVA. All rights reserved.
//

import UIKit
import AVFoundation

class AudioViewController: UIViewController {

    var BackgroundMusic = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            BackgroundMusic = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Audio", ofType: "mp3")!))
            BackgroundMusic.prepareToPlay()
        } catch {
            
        }
        
    }
    
    @IBAction func PlayAudio(_ sender: Any) {
        BackgroundMusic.play()
    }
    
    @IBAction func StopAudio(_ sender: Any) {
        if BackgroundMusic.isPlaying {
            BackgroundMusic.stop()
        }
    }
    
    @IBAction func RestartAudio(_ sender: Any) {
        if BackgroundMusic.isPlaying {
            BackgroundMusic.currentTime = 0
            BackgroundMusic.play()
        } else {
            BackgroundMusic.play()
        }
    }
    
}
