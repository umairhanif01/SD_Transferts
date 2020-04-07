//
//  paymentsController.swift
//  SD_Tranferts_Contractor_App
//
//  Created by Umair Hanif on 17/03/2020.
//  Copyright © 2020 Hixol. All rights reserved.
//

import UIKit

class PaymentsController: UIViewController {

    
    
    
//               Step Three Start              //
    

    // OUTLETS
    
    

    // ACTIONS
    
    // Go Back To Step Two
    @IBAction func goToStepTwo(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // Go To addCardDetails
    @IBAction func goToStepFour(_ sender: Any) {
        performSegue(withIdentifier: "goToStepFour", sender: self)
    }
    
    
    
    // Go Back To Step Three
    @IBAction func goToStepThree(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//               Step Three End                //
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
