//
//  SignupController.swift
//  SD_Tranferts_Contractor_App
//
//  Created by Hixol on 05/03/2020.
//  Copyright © 2020 Hixol. All rights reserved.
//

import UIKit
import McPicker

class SignupController: UIViewController {

    
//               Step One Start                //
    
    // OUTLETS

    @IBOutlet weak var civility: McTextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var legalStatus: UITextField!
    @IBOutlet weak var companyName: UITextField!
    @IBOutlet weak var sNumber: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var cPassword: UITextField!
    
    
    // ACTIONS
    
    
    // Civility picker with MCPickerView
    @IBAction func tapAction(_ sender: Any) {
        McPicker.show(data: [["Sir.", "Madam", "Mr.", "Ms."]]) {  [weak self] (selections: [Int : String]) -> Void in
            if let name = selections[0] {
                self?.civility.text = name
            }
        }
    }
    
    // Keyboard Hide Funcion on Clicking the view
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
          self.view.endEditing(true)
    }
    
    // Go Back To LogIn Screen
    @IBAction func goToMainScreen(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // Go Forward to Step Two
    @IBAction func proceedToStepTwo(_ sender: Any) {
    //performSegue(withIdentifier: "goToStepTwo", sender: self)
        stepOneValidation()
    }
    
    // validation
    func stepOneValidation(){
        
        if civility.text == ""{
            let alert = UIAlertController(title: "Required", message: "Please select civility.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "close", style: .default) { (UIAlertAction) in
                alert.dismiss(animated: true, completion: nil)
                self.tapAction(self.civility!)
            })
            present(alert, animated: true, completion: nil)
        } else if lastName.text == ""{
            let alert = UIAlertController(title: "Required", message: "Please enter Last Name.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "close", style: .default) { (UIAlertAction) in
                alert.dismiss(animated: true, completion: nil)
                self.lastName.becomeFirstResponder()
            })
            present(alert, animated: true, completion: nil)
        } else if firstName.text == ""{
                let alert = UIAlertController(title: "Required", message: "Please enter First Name.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "close", style: .default) { (UIAlertAction) in
                alert.dismiss(animated: true, completion: nil)
                self.firstName.becomeFirstResponder()
            })
            present(alert, animated: true, completion: nil)
        } else if legalStatus.text == ""{
            let alert = UIAlertController(title: "Required", message: "Please enter Legal Status.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "close", style: .default) { (UIAlertAction) in
                alert.dismiss(animated: true, completion: nil)
                self.legalStatus.becomeFirstResponder()
            })
            present(alert, animated: true, completion: nil)
        } else if companyName.text == ""{
            let alert = UIAlertController(title: "Required", message: "Please enter Company Name.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "close", style: .default) { (UIAlertAction) in
                alert.dismiss(animated: true, completion: nil)
                self.companyName.becomeFirstResponder()
            })
            present(alert, animated: true, completion: nil)
        } else if sNumber.text == ""{
            let alert = UIAlertController(title: "Required", message: "Please enter SIRET/SIREN Number.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "close", style: .default) { (UIAlertAction) in
                alert.dismiss(animated: true, completion: nil)
                self.sNumber.becomeFirstResponder()
            })
            present(alert, animated: true, completion: nil)
        } else if address.text == ""{
            let alert = UIAlertController(title: "Required", message: "Please enter Address.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "close", style: .default) { (UIAlertAction) in
                alert.dismiss(animated: true, completion: nil)
                self.address.becomeFirstResponder()
            })
            present(alert, animated: true, completion: nil)
        } else if phoneNumber.text == ""{
            let alert = UIAlertController(title: "Required", message: "Please enter Phone Number.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "close", style: .default) { (UIAlertAction) in
                alert.dismiss(animated: true, completion: nil)
                self.phoneNumber.becomeFirstResponder()
            })
            present(alert, animated: true, completion: nil)
        } else if email.text == ""{
            let alert = UIAlertController(title: "Required", message: "Please enter E-mail.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "close", style: .default) { (UIAlertAction) in
                alert.dismiss(animated: true, completion: nil)
                self.email.becomeFirstResponder()
            })
            present(alert, animated: true, completion: nil)
        } else if password.text == ""{
            let alert = UIAlertController(title: "Required", message: "Please enter Password.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "close", style: .default) { (UIAlertAction) in
                alert.dismiss(animated: true, completion: nil)
                self.password.becomeFirstResponder()
            })
            present(alert, animated: true, completion: nil)
        } else if cPassword.text == ""{
            let alert = UIAlertController(title: "Required", message: "Please enter Password Again.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "close", style: .default) { (UIAlertAction) in
                alert.dismiss(animated: true, completion: nil)
                self.cPassword.becomeFirstResponder()
            })
            present(alert, animated: true, completion: nil)
        } else if password.text != cPassword.text{
            let alert = UIAlertController(title: "Required", message: "Password does not match.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "close", style: .default) { (UIAlertAction) in
                alert.dismiss(animated: true, completion: nil)
                self.cPassword.becomeFirstResponder()
            })
            present(alert, animated: true, completion: nil)
        } else {
            performSegue(withIdentifier: "goToStepTwo", sender: self)
        }
        
    }
    
//               Step One End                  //
    
    
    
//               Step Two Start                //
    
    
    // OUTLETS
    
    @IBOutlet weak var idDocument: UILabel!
    @IBOutlet weak var kbis: UILabel!
    @IBOutlet weak var license: UILabel!
    
    
    
    
    // ACTIONS
    
    // Go Back To Step One
    @IBAction func goToStepOne(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // Go To Step Three
    @IBAction func goToStepThree(_ sender: Any) {
        performSegue(withIdentifier: "goToStepThree", sender: self)
    }
    
    
//               Step Two End                  //
    
    
    
    
    
    
    
    
    
    
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

