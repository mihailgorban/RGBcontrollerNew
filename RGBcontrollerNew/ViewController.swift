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
    var red: Float = 0.0
    var green: Float = 0.0
    var blue: Float = 0.0
    
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
    redSlider.minimumValue = 0.0
    redSlider.maximumValue = 255.0
    redSlider.tintColor = UIColor.red
    redSlider.value = 0.0
    greenSlider.minimumValue = 0.0
    greenSlider.maximumValue = 255.0
    greenSlider.tintColor = UIColor.green
    greenSlider.value = 0.0
    blueSlider.minimumValue = 0.0
    blueSlider.maximumValue = 255.0
    blueSlider.tintColor = UIColor.blue
    blueSlider.value = 0.0
    redTextField.text = "0"
    greenTextField.text = "0"
    blueTextField.text = "0"
    red = redSlider.value
    green = greenSlider.value
    blue = blueSlider.value
    myView.backgroundColor = myViewColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
    @IBAction func redSliderAction(_ sender: Any) {
    red = redSlider.value
    myView.backgroundColor = myViewColor(red: CGFloat(red / 255.0), green: CGFloat(green / 255.0), blue: CGFloat(blue / 255.0))
    redTextField.text = String(format: "%.0f", red)
    }
    @IBAction func greenSliderAction(_ sender: Any) {
    green = greenSlider.value
        myView.backgroundColor = myViewColor(red:CGFloat(red / 255.0), green: CGFloat(green / 255.0), blue:CGFloat(blue / 255.0))
    greenTextField.text = String(format: "%.0f", green)
    }
    @IBAction func blueSliderAction(_ sender: Any) {
    blue = blueSlider.value
        myView.backgroundColor = myViewColor(red: CGFloat(red / 255.0), green: CGFloat(green / 255.0), blue: CGFloat(blue / 255.0))
    blueTextField.text = String(format: "%.0f", blue)
    }
    @IBAction func redTxFieldAction(_ sender: Any) {
        guard redTextField.text!.isEmpty == false else {return}
        let redNum = Double(redTextField.text!)
        if redNum! < 0 || redNum! > 255 {
            let alert = UIAlertController(title: "Wrong number", message: "Code must be from 0 to 255", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            redTextField.text = "0"
        } else {
            red = Float(redNum!)
            redSlider.value = red
            myView.backgroundColor = myViewColor(red: CGFloat(red / 255.0), green: CGFloat(green / 255.0), blue: CGFloat(blue / 255.0))
        }
    }
    @IBAction func greenTxField(_ sender: Any) {
        guard greenTextField.text!.isEmpty == false else {return}
        let greenNum = Double(greenTextField.text!)
        if greenNum! < 0 || greenNum! > 255 {
            let alert = UIAlertController(title: "Wrong number", message: "Code must be from 0 to 255", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            greenTextField.text = "0"
        } else {
            green = Float(greenNum!)
            greenSlider.value = green
            myView.backgroundColor = myViewColor(red: CGFloat(red / 255.0), green: CGFloat(green / 255.0), blue: CGFloat(blue / 255.0))
        }
    }
    @IBAction func blueTxAction(_ sender: Any) {
        guard blueTextField.text!.isEmpty == false else {return}
        let blueNum = Double(blueTextField.text!)
        if blueNum! < 0 || blueNum! > 255 {
            let alert = UIAlertController(title: "Wrong number", message: "Code must be from 0 to 255", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            blueTextField.text = "0"
        } else {
            blue = Float(blueNum!)
            blueSlider.value = red
            myView.backgroundColor = myViewColor(red: CGFloat(red / 255.0), green: CGFloat(green / 255.0), blue: CGFloat(blue / 255.0))
        }
    }
    @IBAction func clearButtonAction(_ sender: Any) {
    redSlider.value = 0.0
    greenSlider.value = 0.0
    blueSlider.value = 0.0
    red = redSlider.value
    green = greenSlider.value
    blue = blueSlider.value
    redTextField.text = "0"
    greenTextField.text = "0"
    blueTextField.text = "0"
    myView.backgroundColor = myViewColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue))
    }
    

    
}

