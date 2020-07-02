//
//  Shadow.swift
//  RecipixSwift
//
//  Created by Ann-Marie Kemp on 7/1/20.
//  Copyright © 2020 Ann-Marie Kemp. All rights reserved.
//

import UIKit

@IBDesignable
class ShadowView: UIView {
    //Shadow
    @IBInspectable var shadowColor: UIColor = UIColor.black {
        didSet {
            self.updateView()
        }
    }
    @IBInspectable var shadowOpacity: Float = 0.5 {
        didSet {
            self.updateView()
        }
    }
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 3, height: 3) {
        didSet {
            self.updateView()
        }
    }
    @IBInspectable var shadowRadius: CGFloat = 15.0 {
        didSet {
            self.updateView()
        }
    }

    //Apply params
    func updateView() {
        self.layer.shadowColor = self.shadowColor.cgColor
        self.layer.shadowOpacity = self.shadowOpacity
        self.layer.shadowOffset = self.shadowOffset
        self.layer.shadowRadius = self.shadowRadius
    }
}
