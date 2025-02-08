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
        
        setupWindows()
        setupLabels()
        setupSlidrersControllers()
        colorGradient()
        sliderValueText()
    }
    
    private func setupWindows () {
        windowWiewController.layer.cornerRadius = 10
        windowWiewController.layer.borderWidth = 1.5
        windowWiewController.layer.borderColor = UIColor.gray.cgColor
    }
    
    private func setupLabels() {
        redLabel.text = "RED:"
        greenLabel.text = "GREEN:"
        blueLabel.text = "BLUE:"
        
        redLabel.textColor = .red
        greenLabel.textColor = .green
        blueLabel.textColor = .blue
        
        redDate.textColor = .red
        greenDate.textColor = .green
        blueDate.textColor = .blue
    }
    
    private func setupSlidrersControllers() {
        redSlider.thumbTintColor = .red
        redSlider.tintColor = .red
        
        greenSlider.thumbTintColor = .green
        greenSlider.tintColor = .green
        
        blueSlider.thumbTintColor = .blue
        blueSlider.tintColor = .blue
        
        redSlider.value = 0.15
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        
        greenSlider.value = 0.35
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        
        blueSlider.value = 0.55
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        
    }
    
    private func sliderValueText() {
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
    
    private func updateLabels() {
        redDate.text = String(format: "%.2f", redSlider.value)
        greenDate.text = String(format: "%.2f", greenSlider.value)
        blueDate.text = String(format: "%.2f", blueSlider.value)
    }
    
    @IBAction private func redSliderAction() {
        updateLabels()
        colorGradient()
    }
    
    @IBAction private func greenSliderAction() {
        updateLabels()
        colorGradient()
    }
    
    @IBAction private func blueSliderAction() {
        updateLabels()
        colorGradient()
    }
}

/*
override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        colorGradient() // Устанавливаем начальный цвет
    }
    
    private func setupUI() {
        windowWiewController.layer.cornerRadius = 10
        windowWiewController.layer.borderWidth = 1.5
        windowWiewController.layer.borderColor = UIColor.gray.cgColor
        
        setupLabels()
        setupSlider(redSlider, color: .red, value: 0.25)
        setupSlider(greenSlider, color: .green, value: 0.50)
        setupSlider(blueSlider, color: .blue, value: 0.75)
        
        updateLabels()
    }
    
    private func setupLabels() {
        redLabel.text = "RED:"
        greenLabel.text = "GREEN:"
        blueLabel.text = "BLUE:"
        
        redLabel.textColor = .red
        greenLabel.textColor = .green
        blueLabel.textColor = .blue
        
        redDate.textColor = .red
        greenDate.textColor = .green
        blueDate.textColor = .blue
    }
    
    private func setupSlider(_ slider: UISlider, color: UIColor, value: Float) {
        slider.thumbTintColor = color
        slider.tintColor = color
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.value = value
    }
    
    private func updateLabels() {
        redDate.text = String(format: "%.2f", redSlider.value)
        greenDate.text = String(format: "%.2f", greenSlider.value)
        blueDate.text = String(format: "%.2f", blueSlider.value)
    }
    
    private func colorGradient() {
        windowWiewController.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction private func sliderChanged() {
        updateLabels()
        colorGradient()
    }
}
*/
