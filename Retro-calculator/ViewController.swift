//
//  ViewController.swift
//  Retro-calculator
//
//  Created by Jason Leung on 5/17/16.
//  Copyright © 2016 Jason Leung. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var outputLbl: UILabel!
    
    var btnSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        
        let soundUrl = NSURL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundUrl)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }

    @IBAction func numberPressed(btn: UIButton!) {
        btnSound.play()
    }


}

