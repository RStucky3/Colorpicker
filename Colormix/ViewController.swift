//
//  ViewController.swift
//  Colormix
//
//  Created by SD on 21/02/2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var Colorview: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch:UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Colorview.backgroundColor = .black
        updateColor()
        Colorview.layer.borderWidth = 5
        Colorview.layer.cornerRadius = 20
        Colorview.layer.borderColor =
           UIColor.black.cgColor
        redSlider.isEnabled = false
        greenSlider.isEnabled = false
        blueSlider.isEnabled = false
    }

    @IBAction func switchChanged(_ sender: UISwitch){
        updateColor()
        updateControls()
    }
    

    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
    
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green,
           blue: blue, alpha: 1)
        Colorview.backgroundColor = color
    }
    @IBAction func sliderChanged(_ sender: Any) {
        updateColor()
    }
    
    
    @IBAction func reset(_ sender: Any) {
        var red: CGFloat = 0
        var  green: CGFloat = 0
        var blue: CGFloat = 0
        
        let color = UIColor(red: red, green: green,
           blue: blue, alpha: 1)
        Colorview.backgroundColor = color
        
        blueSlider.value = 1
        redSlider.value = 1
        greenSlider.value = 1
        
        blueSwitch.isOn = false
        redSwitch.isOn = false
        greenSwitch.isOn = false
        
        redSlider.isEnabled = false
        greenSlider.isEnabled = false
        blueSlider.isEnabled = false
    }
    
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    

   
    
}

