//
//  ViewController.swift
//  Meme Review
//
//  Created by Zachary Cowan on 10/19/18.
//  Copyright © 2018 Zachary Cowan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let memeReview = MemeReview(withMemes: [
        "Dos Equis Meme", "Drunk Baby Meme",
        "Football Meme", "Frozone Meme",
        "Shaq Meme", "Office Meme"])

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateMeme()
    }
    
    // Functions
    func updateMeme() {
        let meme = memeReview.getMeme()
        let memeName = meme.getName()
        let memeScore = meme.getScore()
        
        memeNameLabel.text = memeName
        memeScoreLabel.text = "Score: \(memeScore)"
        memeImageView.image = UIImage(named: memeName)
        newMemeScoreSlider.value = Float(memeScore)
        memeLevelLabel.text = meme.getMemeLevel()
        updateNewScoreLabel()
    }
    
    func updateNewScoreLabel() {
        newMemeScoreLabel.text = "New Score: \(Int(newMemeScoreSlider.value))"
    }
    
    // References
    @IBOutlet weak var nextMemeButton: UIButton!
    @IBOutlet weak var memeNameLabel: UILabel!
    @IBOutlet weak var memeLevelLabel: UILabel!
    @IBOutlet weak var memeScoreLabel: UILabel!
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var newMemeScoreLabel: UILabel!
    @IBOutlet weak var newMemeScoreSlider: UISlider!
    
    // Actions
    @IBAction func newMemeScoreChanged(_ sender: UISlider) {
        updateNewScoreLabel()
    }
    @IBAction func nextMemeButtonTapped(_ sender: UIButton) {
        memeReview.nextMeme(newScore: Int(newMemeScoreSlider.value))
        updateMeme()
    }

}

