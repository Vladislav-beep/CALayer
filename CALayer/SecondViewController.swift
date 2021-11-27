//
//  SecondViewController.swift
//  CALayer
//
//  Created by Владислав Сизонов on 26.11.2021.
//

import UIKit

class SecondViewController: UIViewController {

    var gradientLayer: CAGradientLayer! {
        didSet {
            gradientLayer.startPoint = CGPoint(x: 1, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0, y: 1)
            gradientLayer.colors = [UIColor.green.cgColor, UIColor.gray.cgColor]
            gradientLayer.locations = [0.2, 0.8]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        gradientLayer = CAGradientLayer()
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

    override func viewDidLayoutSubviews() {
        gradientLayer.frame = CGRect(x: 0, y: 50, width: view.bounds.size.width, height: view.bounds.size.height - 100)
    }
}
