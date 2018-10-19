//
//  ViewController.swift
//  Meme Review
//
//  Created by Zachary Cowan on 10/19/18.
//  Copyright © 2018 Zachary Cowan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //References
    @IBOutlet weak var nextMemeButton: UIButton!
    @IBOutlet weak var memeNameLabel: UILabel!
    @IBOutlet weak var dankMemeLabel: UILabel!
    @IBOutlet weak var memeScoreLabel: UILabel!
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var newMemeScoreLabel: UILabel!
    @IBOutlet weak var newMemeScoreSlider: UISlider!
    
    //Actions
    @IBAction func newMemeScoreChanged(_ sender: UISlider) {
    }
    @IBAction func nextMemeButtonTapped(_ sender: UIButton) {
    }
    
    
    

}

