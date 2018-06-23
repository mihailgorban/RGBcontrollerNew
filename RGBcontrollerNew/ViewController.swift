//
//  ViewController.swift
//  RGBcontrollerNew
//
//  Created by Екатерина Горбань on 23.06.2018.
//  Copyright © 2018 MIkhail Gorban. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    func myViewColor (red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1.0
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    redLabel.text = "Red"
    redLabel.textColor = UIColor.red
    redLabel.textAlignment = .center
    greenLabel.text = "Green"
    greenLabel.textColor = UIColor.green
    greenLabel.textAlignment = .center
    blueLabel.text = "Blue"
    blueLabel.textColor = UIColor.blue
    blueLabel.textAlignment = .center
    clearButton.setTitle("Clear", for: .normal)
    clearButton.layer.cornerRadius = 20
    clearButton.layer.borderColor = UIColor.black.cgColor
    clearButton.layer.borderWidth = 1.0
    redSlider.minimumValue = 0
    redSlider.maximumValue = 256
    redSlider.tintColor = UIColor.red
    redSlider.value = 0
    greenSlider.minimumValue = 0
    greenSlider.maximumValue = 256
    greenSlider.tintColor = UIColor.green
    greenSlider.value = 0
    blueSlider.minimumValue = 0
    blueSlider.maximumValue = 256
    blueSlider.tintColor = UIColor.blue
    blueSlider.value = 0
    redTextField.keyboardType = .numberPad
    redTextField.text = "0"
    greenTextField.text = "0"
    greenTextField.keyboardType = .numberPad
    blueTextField.text = "0"
    blueTextField.keyboardType = .numberPad
    myView.backgroundColor = myViewColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
    @IBAction func redSliderAction(_ sender: Any) {

    }
    @IBAction func greenSliderAction(_ sender: Any) {
    }
    @IBAction func blueSliderAction(_ sender: Any) {
    }
    @IBAction func redTxFieldAction(_ sender: Any) {
    }
    @IBAction func greenTxField(_ sender: Any) {
    }
    @IBAction func blueTxAction(_ sender: Any) {
    }
    @IBAction func clearButtonAction(_ sender: Any) {
    }
    

    
}

