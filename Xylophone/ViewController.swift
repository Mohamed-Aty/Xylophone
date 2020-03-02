//
//  ViewController.swift
//  Xylophone
//
//  Created by Moahmed abd elaty on 8/02/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["C","D","E","F","G","A","B"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func notePressed(_ sender: Any) {
        playSound(soundFileName: soundArray[(sender as AnyObject).tag - 1])
    }
    
    func playSound(soundFileName : String)  {
        let soundURl = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURl!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
    }
}
