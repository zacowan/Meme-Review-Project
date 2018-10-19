//
//  Meme.swift
//  Meme Review
//
//  Created by Zachary Cowan on 10/19/18.
//  Copyright © 2018 Zachary Cowan. All rights reserved.
//

import Foundation
import UIKit

class Meme {
    private var name: String
    private var score: Int
    private var image: UIImage
    
    init(name _name: String) {
        name = _name
        image = UIImage(named: _name)!
        score = Int.random(in: 1 ... 10)
    }
    
    func getName() -> String {
        return name
    }
    
    func getScore() -> Int {
        return score
    }
    
    func setScore(score newScore: Int) {
        score = newScore
    }
    
    func getImage() -> UIImage {
        return image
    }
    
    func getMemeLevel() -> String {
        var level: String
        if score >= 9 {
            level = "DANK MEME"
        } else if score >= 7 {
            level = "SPICY MEME"
        } else if score >= 4 {
            level = "JUST MEME"
        } else if score >= 2 {
            level = "POOR MEME"
        } else {
            level = "DEAD MEME"
        }
        return level
    }
}
