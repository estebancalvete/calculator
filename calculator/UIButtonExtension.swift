//
//  UIButtonExtension.swift
//  calculator
//
//  Created by Esteban Calvete Iglesias on 03/04/2021.
//

import UIKit

extension UIButton {
    func round() {
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
    func shine() {
        UIView.animate(withDuration: 0.1, animations: {
            self.alpha = 0.5
        }) { (completion) in
            UIView.animate(withDuration: 0.1, animations: {
                self.alpha = 1
            })
        }
    }
}
