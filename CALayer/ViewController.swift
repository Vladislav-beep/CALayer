//
//  ViewController.swift
//  CALayer
//
//  Created by Владислав Сизонов on 26.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var gradientLayer: CAGradientLayer! {
        didSet {
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0)
            gradientLayer.colors = [UIColor.green.cgColor, UIColor.gray.cgColor]
            gradientLayer.locations = [0, 0.8, 1]
        }
    }

    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = imageView.frame.height / 2
            imageView.backgroundColor = .gray
            imageView.image = UIImage(named: "prog")
            imageView.layer.borderWidth = 10
            imageView.layer.borderColor = UIColor.gray.cgColor
        }
    }
    
    @IBOutlet weak var button: UIButton! {
        didSet {
            button.layer.shadowOffset = CGSize(width: 0, height: 5)
            button.layer.shadowOpacity = 0.5
            button.layer.shadowRadius = 5
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        gradientLayer = CAGradientLayer()
        view.layer.insertSublayer(gradientLayer, at: 0)

    }

    override func viewDidLayoutSubviews() {
        gradientLayer.frame = CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height)
    }
}

