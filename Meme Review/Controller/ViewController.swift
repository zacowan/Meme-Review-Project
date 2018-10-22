//
//  ViewController.swift
//  Meme Review
//
//  Created by Zachary Cowan on 10/19/18.
//  Copyright © 2018 Zachary Cowan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let memeReview = MemeReview(withMemes: ["Dos Equis", "Drunk Baby", "Football", "Frozone", "Shaq", "Office"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        applyViewStyling()
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
    
    func applyViewStyling() {
        ViewStyler.styleView(view: view)
        ViewStyler.styleButton(button: nextMemeButton)
        ViewStyler.styleScoreLabel(label: memeScoreLabel)
        ViewStyler.styleScoreLabel(label: newMemeScoreLabel)
        ViewStyler.styleNameLabel(label: memeNameLabel)
        ViewStyler.styleLevelLabel(label: memeLevelLabel)
        ViewStyler.styleImageView(imageView: memeImageView)
        ViewStyler.styleTitleLabel(label: memeReviewTitle)
        ViewStyler.styleSlider(slider: newMemeScoreSlider)
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

