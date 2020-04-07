//
//  LoginController.swift
//  SD_Tranferts_Contractor_App
//
//  Created by Hixol on 07/02/2020.
//  Copyright © 2020 Hixol. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    
    
  
   
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        uiviewGradient.setgradientBackground(ColourOne: .gray, ColorTwo: .blue)
    }
   
 
   
}

extension UIView{
    
    func setgradientBackground(ColourOne: UIColor, ColorTwo: UIColor)
    {
    let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [ColourOne.cgColor, ColorTwo.cgColor]
        gradientLayer.locations = [0.0,1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
    }
}
