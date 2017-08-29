# ColorPicker

[![CI Status](http://img.shields.io/travis/malkouz/ColorPicker.svg?style=flat)](https://travis-ci.org/malkouz/ColorPicker)
[![Version](https://img.shields.io/cocoapods/v/ColorPicker.svg?style=flat)](http://cocoapods.org/pods/ColorPicker)
[![License](https://img.shields.io/cocoapods/l/ColorPicker.svg?style=flat)](http://cocoapods.org/pods/ColorPicker)
[![Platform](https://img.shields.io/cocoapods/p/ColorPicker.svg?style=flat)](http://cocoapods.org/pods/ColorPicker)

##ColorPicker
ColorPicker is a fantastic color picker 🎨 written in Swift. Developers can use our color picker as is or they can customize it with all the available features

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


# Screenshot
(https://github.com/malkouz/SwiftTransition/blob/master/screenshots/ezgif-1-263696505e.gif)

## Requirements
iOS8+

## Installation

ColorPicker is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ColorPicker"
```

## How to use
```easy to use
import ColorPicker

let colorPicker = ColorPickerViewController()
colorPicker.selectedColor = { color in
    //Put your code that will be excuted when select a color
}

//To inialize the picker as popover controller
if let popoverController = colorPicker.popoverPresentationController{
    popoverController.delegate = colorPicker
    popoverController.permittedArrowDirections = .any
    popoverController.sourceView = sender
    popoverController.sourceRect = sender.bounds
}

self.present(colorPicker, animated: true, completion: nil)

```


## Customize your picker
```Customization
colorPicker.autoDismissAfterSelection = false //default: true

colorPicker.scrollDirection = .vertical //default: .horizontal

colorPicker.style = .square //default: .circle

colorPicker.pickerSize = CGSize(width: newWidth, height: newHeight) //default 250, 250


//Change default colors list "colorPalette.plist" contains array of hexa. colors, 
//you can simply change it to your colors or initialize your list from anywhere your want.
var colors = [UIColor]()
let path = Bundle.main.path(forResource: "colorPalette", ofType: "plist")
let pListArray = NSArray(contentsOfFile: path!)

if let colorPalettePlistFile = pListArray as? [String] {
    for col in colorPalettePlistFile{
        colors.append(UIColor(hex: col))
    }
}

colorPicker.allColors = colors

```



## Author

Moayad Al kouz, moayad_kouz9@hotmail.com

## License

ColorPicker is available under the MIT license. See the LICENSE file for more info.
