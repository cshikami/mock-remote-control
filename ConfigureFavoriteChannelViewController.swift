//
//  ConfigureFavoriteChannelViewController.swift
//  ShikamiC - Assignment6
//
//  Created by Christopher Shikami on 2/27/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import UIKit

class ConfigureFavoriteChannelViewController: UIViewController {
    
    @IBOutlet weak var favoriteChannelSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var configureFavoriteChannelTextField: UITextField!
    
    @IBOutlet weak var configureFavoriteChannelNumber: UILabel!
    
    @IBAction func pressStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        if (value >= 1 && value < 100) {
        configureFavoriteChannelNumber.text = Int(sender.value).description
        } else {
        }
    }
    

    @IBAction func doneWriting(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func saveFavoriteChannel(_ sender: UIButton) {
        if (configureFavoriteChannelTextField.text!.characters.count >= 1 && configureFavoriteChannelTextField.text!.characters.count < 4) {
            let index = favoriteChannelSegmentedControl.selectedSegmentIndex
            
            favoriteChannels[index].name = configureFavoriteChannelTextField.text!
            favoriteChannels[index].number = configureFavoriteChannelNumber.text!
            configureFavoriteChannelTextField.resignFirstResponder()
            
        }
        else {
            let title = "Alert"
            let message = "Label must be between 1 and 3 letters in length"
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func cancelFavoriteChannel(_ sender: UIButton) {
        configureFavoriteChannelTextField.text = ""
        configureFavoriteChannelTextField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
