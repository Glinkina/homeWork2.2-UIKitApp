//
//  ViewController.swift
//  homeWork2.2 UIKitApp
//
//  Created by Andrey Glinkin on 06.12.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colorView: UIView!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var statusLabelRed: UILabel!
    @IBOutlet var statusLabelGreen: UILabel!
    @IBOutlet var statusLabelBlue: UILabel!
    @IBOutlet var nameLabelRed: UILabel!
    @IBOutlet var nameLabelGreen: UILabel!
    @IBOutlet var nameLabelBlue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        colorView.layer.cornerRadius = 15
        colorView.backgroundColor = UIColor (red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
       
        nameLabelRed.textColor = .red
        nameLabelGreen.textColor = .green
        nameLabelBlue.textColor = .blue
        
        redSlider.value = 0
        redSlider.minimumValue = 0/255
        redSlider.maximumValue = 255/255
        statusLabelRed.text = String("0")
        redSlider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        
        greenSlider.value = 0
        greenSlider.minimumValue = 0/255
        greenSlider.maximumValue = 255/255
        statusLabelGreen.text = String("0")
        greenSlider.thumbTintColor = UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 1)
        
        blueSlider.value = 0
        blueSlider.minimumValue = 0/255
        blueSlider.maximumValue = 255/255
        statusLabelBlue.text = String("0")
        blueSlider.thumbTintColor = UIColor(red: 0/255, green: 0/255, blue: 255/255, alpha: 1)
    }
    @IBAction func actionRedSlider(_ sender: Any) {
        changeColorView()
        statusLabelRed.text = String (Int(redSlider.value * 255))
    }
    
    @IBAction func actionGreenSlider(_ sender: Any) {
        changeColorView()
        statusLabelGreen.text = String(Int(greenSlider.value * 255))
    }
    
    @IBAction func actionBlueSlider(_ sender: Any) {
        changeColorView()
        statusLabelBlue.text = String(Int(blueSlider.value * 255))
    }
    
    func changeColorView() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
}
