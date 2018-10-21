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
        "Dos Equis", "Drunk Baby",
        "Football", "Frozone",
        "Shaq", "Office"])
    
    let viewStyler = ViewStyler()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewStyler.buttonStyle(button: nextMemeButton)
        viewStyler.scoreLabelStyle(label: memeScoreLabel)
        viewStyler.scoreLabelStyle(label: newMemeScoreLabel)
        viewStyler.nameLabelStyle(label: memeNameLabel)
        viewStyler.levelLabelStyle(label: memeLevelLabel)
        viewStyler.memeImageStyle(imageView: memeImageView)
        viewStyler.titleLabelStyle(label: memeReviewTitle)
        viewStyler.sliderStyle(slider: newMemeScoreSlider)
        view.backgroundColor = #colorLiteral(red: 0.9013727119, green: 0.897710084, blue: 0.9449579832, alpha: 1)
        updateMeme()
    }
    
    // Functions
    func updateMeme() {
        let meme = memeReview.getMeme()
        let memeName = meme.getName()
        let memeScore = meme.getScore()
        
        memeNameLabel.text = memeName
        memeScoreLabel.text = "Score: \(memeScore)/10"
        memeImageView.image = UIImage(named: memeName)
        newMemeScoreSlider.value = Float(memeScore)
        memeLevelLabel.text = meme.getMemeLevel()
        updateNewScoreLabel()
    }
    
    func updateNewScoreLabel() {
        newMemeScoreLabel.text = "New Score: \(Int(newMemeScoreSlider.value))/10"
    }
    
    // References
    @IBOutlet weak var memeReviewTitle: UILabel!
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

