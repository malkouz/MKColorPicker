//
//  ViewController.swift
//  ColorPicker
//
//  Created by moayad_kouz9@hotmail.com on 08/29/2017.
//  Copyright (c) 2017 moayad_kouz9@hotmail.com. All rights reserved.
//

import UIKit
import ColorPicker
class ViewController: UIViewController {

    @IBOutlet weak var dismissSwh: UISwitch!
    @IBOutlet weak var styleSgmt: UISegmentedControl!
    @IBOutlet weak var directionSgmt: UISegmentedControl!
    @IBOutlet weak var colorsSgmt: UISegmentedControl!
    @IBOutlet weak var widthTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var widthSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    let colorPicker = ColorPickerViewController()
//    let circleColorPicker = ColorPickerPopup()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        widthTextField.text = String(format: "%.0f", widthSlider.value)
        heightTextField.text = String(format: "%.0f", heightSlider.value)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK:- show picker
    @IBAction func showPicker(sender: UIButton){
        colorPicker.autoDismissAfterSelection = dismissSwh.isOn
        
        if directionSgmt.selectedSegmentIndex == 0{
            colorPicker.scrollDirection = .horizontal
        }else{
            colorPicker.scrollDirection = .vertical
        }
        
        if styleSgmt.selectedSegmentIndex == 0{
            colorPicker.style = .square
        }else{
            colorPicker.style = .circle
        }
        
        
        colorPicker.pickerSize = CGSize(width: CGFloat(widthSlider.value), height: CGFloat(heightSlider.value))
        
        if colorsSgmt.selectedSegmentIndex == 0{
            colorPicker.allColors = colorPicker.defaultPaletteColors
        }else{
            var colors = [UIColor]()
            let path = Bundle.main.path(forResource: "colorPalette", ofType: "plist")
            let pListArray = NSArray(contentsOfFile: path!)
            
            if let colorPalettePlistFile = pListArray as? [String] {
                for col in colorPalettePlistFile{
                    colors.append(UIColor(hex: col))
                }
            }
            colorPicker.allColors = colors
        }
        
        colorPicker.selectedColor = { color in
            sender.backgroundColor = color
            sender.setTitleColor(color.inverted, for: .normal)
        }
        
        
        

        
        if let popoverController = colorPicker.popoverPresentationController{
            popoverController.delegate = colorPicker
            popoverController.permittedArrowDirections = .any
            //            popoverVC.delegate = self
            popoverController.sourceView = sender
            popoverController.sourceRect = sender.bounds
        }
        
        self.present(colorPicker, animated: true, completion: nil)
    }
    
    
    //MARK:- steppers value changes
    @IBAction func widthChanged(sender: UISlider){
        widthTextField.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func heightChanged(sender: UISlider){
        heightTextField.text = String(format: "%.0f", sender.value)
    }
}

