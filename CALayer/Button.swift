//
//  Button.swift
//  CALayer
//
//  Created by Владислав Сизонов on 27.11.2021.
//

import UIKit

class Button: UIButton {

    var path: UIBezierPath?
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: [.bottomLeft, .topRight, .bottomRight, .topLeft], cornerRadii: CGSize(width: 45, height: 10))
        UIColor.green.setFill()
        path?.fill()
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        if let path = path {
            return path.contains(point)
        }
        return false
    }
}
