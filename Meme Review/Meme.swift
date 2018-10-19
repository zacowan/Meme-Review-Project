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
}
