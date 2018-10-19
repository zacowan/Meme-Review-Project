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
        updateMeme()
    }
    
    let memes: [Meme] = [Meme(name: "Dos Equis Meme"), Meme(name: "Drunk Baby Meme"),
                         Meme(name: "Football Meme"), Meme(name: "Frozone Meme"),
                         Meme(name: "Shaq Meme"), Meme(name: "Office Meme")]
    var currentMeme = 0
    var newMemeScore = 0
    
    //Functions
    func updateMeme() {
        memeNameLabel.text = memes[currentMeme].getName()
        memeScoreLabel.text = "Score: \(memes[currentMeme].getScore())"
        memeImageView.image = memes[currentMeme].getImage()
        newMemeScore = memes[currentMeme].getScore()
        newMemeScoreSlider.value = Float(newMemeScore)
        updateNewScoreLabel()
    }
    
    func updateNewScoreLabel() {
        newMemeScoreLabel.text = "New Score: \(newMemeScore)"
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
        newMemeScore = Int(sender.value)
        updateNewScoreLabel()
    }
    @IBAction func nextMemeButtonTapped(_ sender: UIButton) {
        memes[currentMeme].setScore(score: newMemeScore)
        currentMeme += 1
        if currentMeme >= memes.count {
            currentMeme = 0
        }
        updateMeme()
    }
    
    
    

}

