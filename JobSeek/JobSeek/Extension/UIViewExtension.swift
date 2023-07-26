//
//  View.swift
//  JobSeek
//
//  Created by Darshan Dangar on 26/07/23.
//

import UIKit
extension UIView {
    
    func cornerRadius(_ radius: Double) {
        self.clipsToBounds = true
        self.layer.cornerRadius = radius
    }
    
    func roundView() {
        let roundView = (self.frame.height / 2)
        cornerRadius(roundView)
    }
    
    func setBorderStyle(_ width: Double, _ color: UIColor) {
        self.layer.borderWidth = width
        layer.borderColor = color.cgColor
    }
    
}
