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
    
    init(name _name: String, score _score: Int, image _image: UIImage) {
        name = _name
        score = _score
        image = _image
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
}
