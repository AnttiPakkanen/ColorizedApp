//
//  ViewController.swift
//  ColorizedApp
//
//  Created by автосалон on 25.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mailScreen: UIView!
    @IBOutlet var firstColor: UILabel!
    @IBOutlet var firstColorData: UILabel!
    @IBOutlet var secondColor: UILabel!
    @IBOutlet var secondColorData: UILabel!
    @IBOutlet var thirdColor: UILabel!
    @IBOutlet var thirdColorData: UILabel!
    @IBOutlet var firstColorSlider: UISlider!
    @IBOutlet var secondColorSlider: UISlider!
    @IBOutlet var thirdColorSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstColor.text = "Red"
        secondColor.text = "Green"
        thirdColor.text = "Blue"
        setupFirstColorSlider()
        setupFirstColorData()
        setupSecondColorSlider()
        setupSecondColorData ()
        setupThirdColorSlider()
        setupThirdColorData()
        
    }


    @IBAction func slidersActions() {
        firstColorData.text = "\(firstColorSlider.value)"
        mailScreen.backgroundColor = UIColor(red: CGFloat(firstColorSlider.value), green: CGFloat(secondColorSlider.value), blue: CGFloat(thirdColorSlider.value), alpha: 1)
    }
    
    private func setupFirstColorData () {
        firstColorData.text = String(firstColorSlider.value)
    }
    
    private func setupFirstColorSlider () {
        firstColorSlider.value = 0
        firstColorSlider.minimumValue = 0
        firstColorSlider.maximumValue = 100
    }
    
    private func setupSecondColorData () {
        secondColorData.text = String(secondColorSlider.value)
    }
    
    private func setupSecondColorSlider () {
        secondColorSlider.value = 0
        secondColorSlider.minimumValue = 0
        secondColorSlider.maximumValue = 100
    }
    
    private func setupThirdColorData () {
        thirdColorData.text = String(thirdColorSlider.value)
    }
    
    private func setupThirdColorSlider () {
        thirdColorSlider.value = 0
        thirdColorSlider.minimumValue = 0
        thirdColorSlider.maximumValue = 100
    }
}

