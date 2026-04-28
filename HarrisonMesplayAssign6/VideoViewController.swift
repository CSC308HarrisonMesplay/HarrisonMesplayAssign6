//
//  VideoViewController.swift
//  M10Bar
//
//  Created by Mesplay, Harrison W. on 4/27/26.
//

import UIKit
import AVKit
import AVFoundation

class VideoViewController: UIViewController {

    @IBOutlet weak var OImageView: UIImageView!
    @IBOutlet weak var MPImageView: UIImageView!
    @IBOutlet weak var HWImageView: UIImageView!
    
    //could not get the images to fit in button so i improvised
    //this allows each image view to be tapped and perform a func
    override func viewDidLoad() {
        super.viewDidLoad()
        //enable user interaction
        OImageView.isUserInteractionEnabled = true
        MPImageView.isUserInteractionEnabled = true
        HWImageView.isUserInteractionEnabled = true
        //create gesture reconizer
        let OGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(OImageTapped))
        let MPGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(MPImageTapped))
        let HWGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(HWImageTapped))
        //add to image view
        OImageView.addGestureRecognizer(OGestureRecognizer)
        MPImageView.addGestureRecognizer(MPGestureRecognizer)
        HWImageView.addGestureRecognizer(HWGestureRecognizer)
    }
    
    func playVideo(url: URL) {
        let player = AVPlayer(url: url)
        let playerVC = AVPlayerViewController()
        playerVC.player = player

        present(playerVC, animated: true) {
            player.play()
        }
    }
    
    @objc func HWImageTapped() {
        if let url = Bundle.main.url(forResource: "Hvideo", withExtension: "mp4") {
            playVideo(url: url)
        } else {
            print("Hvideo.mp4 not found")
        }
    }
    @objc func MPImageTapped() {
        if let url = Bundle.main.url(forResource: "Pvideo", withExtension: "mp4") {
            playVideo(url: url)
        } else {
            print("Pvideo.mp4 not found")
        }
    }

    @objc func OImageTapped() {
        if let url = Bundle.main.url(forResource: "Ovideo", withExtension: "mp4") {
            playVideo(url: url)
        } else {
            print("Ovideo.mp4 not found")
        }
    }
}
