//
//  UIColor+isLight.swift
//  TimeSinceLast
//
//  Created by Will Chilcutt on 1/6/17.
//  Copyright © 2017 Laoba Labs. All rights reserved.
//

import Foundation

extension UIColor
{
    func isLight() -> Bool
    {
        if let components = self.cgColor.components
        {
            if components.count >= 3
            {
                let firstNumber = components[0] * 299.0
                let secondNumber = components[1] * 587.0
                let thirdNumber = components[2] * 114.0

                let brightness = (firstNumber + secondNumber + thirdNumber) / 1000.0

                return brightness >= 0.5
            }
            //White is just 1 with alpha of 1
            else if components.count == 2 &&
                components[0] == 1
            {
                return true
            }
        }
        
        return false
    }
}
