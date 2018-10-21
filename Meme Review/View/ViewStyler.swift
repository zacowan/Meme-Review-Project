//
//  ViewStyler.swift
//  Meme Review
//
//  Created by Zachary Cowan on 10/21/18.
//  Copyright © 2018 Zachary Cowan. All rights reserved.
//

import Foundation
import UIKit

class ViewStyler {
    
    public func buttonStyle(button: UIButton) {
        button.layer.cornerRadius = 35
        button.backgroundColor = #colorLiteral(red: 0.3568627451, green: 0.3176470588, blue: 0.8235294118, alpha: 1)
        button.setTitleColor(#colorLiteral(red: 0.9013727119, green: 0.897710084, blue: 0.9449579832, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "AvenirNext-Bold", size: 17)
    }
    
    public func scoreLabelStyle(label: UILabel) {
        label.textColor = #colorLiteral(red: 0.1789666667, green: 0.1716, blue: 0.26, alpha: 1)
        label.font = UIFont(name: "AvenirNext-Heavy", size: 14)
    }
    
    public func levelLabelStyle(label: UILabel) {
        label.textColor = #colorLiteral(red: 0.1789666667, green: 0.1716, blue: 0.26, alpha: 1)
        label.font = UIFont(name: "AvenirNext-Regular", size: 17)
    }
    
    public func nameLabelStyle(label: UILabel) {
        label.textColor = #colorLiteral(red: 0.1789666667, green: 0.1716, blue: 0.26, alpha: 1)
        label.font = UIFont(name: "AvenirNext-Medium", size: 21)
    }
    
    public func memeImageStyle(imageView: UIImageView) {
        imageView.layer.cornerRadius = 20
    }
    
    public func titleLabelStyle(label: UILabel) {
        label.textColor = #colorLiteral(red: 0.1789666667, green: 0.1716, blue: 0.26, alpha: 1)
        label.font = UIFont(name: "AvenirNext-Medium", size: 36)
    }
    
    public func sliderStyle(slider: UISlider) {
        slider.minimumTrackTintColor = #colorLiteral(red: 0.3568627451, green: 0.3176470588, blue: 0.8235294118, alpha: 1)
        slider.maximumTrackTintColor = #colorLiteral(red: 0.3568627451, green: 0.3176470588, blue: 0.8235294118, alpha: 0.3049900968)
        slider.thumbTintColor = #colorLiteral(red: 0.3568627451, green: 0.3176470588, blue: 0.8235294118, alpha: 1)
    }
}
