//
//  ViewController.swift
//  BlendnetHub
//
//  Created by Ramapriya R on 2/1/19.
//  Copyright © 2019 MSR India. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var xbox: UIButton!
    @IBOutlet weak var surfacepro: UIButton!
    @IBOutlet weak var hololens: UIButton!
    @IBOutlet weak var bahubali: UIButton!
    @IBOutlet weak var mufti: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func xboxAction(_ sender: Any) {
        createURL(i: "184")
    }
    
    @IBAction func surfaceproAction(_ sender: Any) {
        createURL(i: "183")
    }
    
    @IBAction func hololensAction(_ sender: Any) {
        createURL(i: "182")
    }
    
    @IBAction func bahubaliAction(_ sender: Any) {
        createURL(i: "189")
    }
    
    @IBAction func muftiAction(_ sender: Any) {
        createURL(i: "190")
    }
    
    func createURL(i: String) {
        
        let url = "http://192.168.137.1:5000/\(i)"
        
        let videoURL = URL(string: url)
        let player = AVPlayer(url: videoURL!)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.present(playerViewController, animated: true) {
            playerViewController.player!.play()
        }
        
//        let activityController = ActivityController()
//        activityController.url = url
//        present(activityController, animated: true, completion: nil)
    }
    
}

