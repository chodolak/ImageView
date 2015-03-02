//
//  ViewController.swift
//  ImageView
//
//  Created by Best Team on 2015-03-01.
//  Copyright (c) 2015 Best Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    var imgList: [UIImage] = []
    var revList: [UIImage] = []
    
    @IBAction func play(sender: AnyObject) {
        for i in 1...199
        {
            var name = "\(i).gif"
            imgList.append(UIImage(named: name)!)
        }
        imgView.animationImages = imgList
        imgView.startAnimating()
    }
    
    @IBAction func reverseA(sender: AnyObject) {
        for i in reverse(1...199)
        {
            var name = "\(i).gif"
            revList.append(UIImage(named: name)!)
        }
        imgView.animationImages = revList
        imgView.startAnimating()
    }
    
    @IBAction func stop(sender: AnyObject) {
        imgView.stopAnimating()
    }
    
    @IBAction func spedUp(sender: AnyObject) {
        imgView.animationDuration = 5.0
        imgView.startAnimating()
    }
    
    @IBAction func slowedDown(sender: AnyObject) {
        imgView.animationDuration = 20.0
        imgView.startAnimating()
    }
    
    @IBAction func superSpeed(sender: AnyObject) {
        imgView.animationDuration = 1.0
        imgView.startAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

