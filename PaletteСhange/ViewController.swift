//
//  ViewController.swift
//  PaletteСhange
//
//  Created by Олег Варенников  on 01.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var windowWiewController: UIStackView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redDate: UILabel!
    @IBOutlet var greenDate: UILabel!
    @IBOutlet var blueDate: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        windowWiewController.layer.cornerRadius = 10
        windowWiewController.backgroundColor = .none
        windowWiewController.layer.borderWidth = 1.5
        windowWiewController.layer.borderColor = UIColor.gray.cgColor
        
        redLabel.textColor = .red
        greenLabel.textColor = .green
        blueLabel.textColor = .blue
        
        redLabel.text = "RED:"
        greenLabel.text = "GREEN:"
        blueLabel.text = "BLUE:"
        
        redDate.textColor = .red
        greenDate.textColor = .green
        blueDate.textColor = .blue
        
        redSlider.thumbTintColor = .red
        redSlider.tintColor = .red
        
        greenSlider.thumbTintColor = .green
        greenSlider.tintColor = .green
        
        blueSlider.thumbTintColor = .blue
        blueSlider.tintColor = .blue
        
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        
        greenSlider.value = 0
        greenSlider.maximumValue = 0
        greenSlider.maximumValue = 1
        
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        
        redDate.text = String(redSlider.value)
        greenDate.text = String(greenSlider.value)
        blueDate.text = String(blueSlider.value)
        
    }
    
    private func colorGradient () {
        windowWiewController.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                                       green: CGFloat(greenSlider.value),
                                                       blue: CGFloat(blueSlider.value),
                                                       alpha: 1)
    }
    
    @IBAction private func redSliderAction() {
        redDate.text = String(format: "%.2f", redSlider.value)
        colorGradient()
    }
    
    @IBAction private func greenSliderAction() {
        greenDate.text = String(format: "%.2f", greenSlider.value)
        colorGradient()
    }
    
    @IBAction private func blueSliderAction() {
        blueDate.text = String(format: "%.2f", blueSlider.value)
        colorGradient()
    }
}
