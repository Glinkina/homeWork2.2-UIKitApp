//
//  ViewController.swift
//  homeWork2.2 UIKitApp
//
//  Created by Andrey Glinkin on 06.12.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colorView: UIView!
   
    @IBOutlet var redSlider: UISlider! {
        didSet {
            redSlider.tintColor = UIColor.red
        }
}
    @IBOutlet var greenSlider: UISlider! {
        didSet {
            greenSlider.tintColor = UIColor.green
        }
}
    @IBOutlet var blueSlider: UISlider! {
        didSet {
            blueSlider.tintColor = UIColor.blue
        }
}
    
    @IBOutlet var statusLabelRed: UILabel!
    @IBOutlet var statusLabelGreen: UILabel!
    @IBOutlet var statusLabelBlue: UILabel!
    @IBOutlet var nameLabelRed: UILabel!
    @IBOutlet var nameLabelGreen: UILabel!
    @IBOutlet var nameLabelBlue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

}
