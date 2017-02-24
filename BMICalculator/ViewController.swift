//
//  ViewController.swift
//  BMICalculator
//
//  Created by Joshua Marvel on 2/13/17.
//  Copyright © 2017 Joshua Marvel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK: Properties
    
    @IBOutlet weak var heightTextBox: UITextField!
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var weightTextBox: UITextField!
    
    @IBOutlet weak var metricUnitsLabel: UILabel!
    
    @IBOutlet weak var picImageView: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var CategoryLabel: UILabel!
    
    @IBOutlet weak var YourBMILabel: UILabel!
    
    @IBOutlet weak var metricSwitch: UISwitch!
    
    
    
    
    
    
   //MARK: Actions
    
    
    @IBAction func metricSwitchToggle(_ sender: UISwitch) {
        
        if sender.isOn{
            heightTextBox.text = ""
            weightTextBox.text = ""
            heightTextBox.placeholder = "in meters"
            weightTextBox.placeholder = "in kilograms"
            YourBMILabel.isHidden = true
            resultLabel.isHidden = true
            CategoryLabel.isHidden = true
            picImageView.isHidden = true
            

            
        }
        else
        {
            heightTextBox.text = ""
            weightTextBox.text = ""
            heightTextBox.placeholder = "in inches"
            weightTextBox.placeholder = "in pounds"
            YourBMILabel.isHidden = true
            resultLabel.isHidden = true
            CategoryLabel.isHidden = true
            picImageView.isHidden = true
            
        }
        
        
    }
    
    
    
    @IBAction func CalculateButton(_ sender: UIButton){
        

        
        let height: Float = Float(heightTextBox.text!)!
    
        let weight: Float = Float(weightTextBox.text!)!
        
        var bmi = Float(0)
        
       
        
        if (metricSwitch.isOn){
            
        bmi = (weight/(height * height))
        }
        
        else{
            
            bmi = (weight * (703/(height*height)))
        }
        
        
        self.displayResult(bmi: bmi)
        
 
    }
    
    private func displayResult(bmi: Float)
    {
        //Severe Thinness
        if(bmi < 16.00)
        {
            YourBMILabel.isHidden = false
            resultLabel.isHidden = false
            resultLabel.text = String(bmi)
            CategoryLabel.isHidden = false
            picImageView.isHidden = false
            CategoryLabel.text = "Severe Thinness"
            picImageView.image = UIImage(named: "skeleton")
        }
        
        //Moderate Thinness
        if(bmi >= 16.00 && bmi <= 16.99)
        {
            YourBMILabel.isHidden = false
            resultLabel.isHidden = false
            resultLabel.text = String(bmi)
            CategoryLabel.isHidden = false
            picImageView.isHidden = false
            CategoryLabel.text = "Moderate Thinness"
            picImageView.image = UIImage(named: "ModerateThinness")
        }
        
        //Mild Thinness
        if(bmi >= 17.00 && bmi <= 18.49)
        {
            YourBMILabel.isHidden = false
            resultLabel.isHidden = false
            resultLabel.text = String(bmi)
            CategoryLabel.isHidden = false
            picImageView.isHidden = false
            CategoryLabel.text = "Mild Thinness"
            picImageView.image = UIImage(named: "mildThinness")
        }
        
        //Normal Range
        if(bmi >= 18.50 && bmi <= 24.99)
        {
            YourBMILabel.isHidden = false
            resultLabel.isHidden = false
            resultLabel.text = String(bmi)
            CategoryLabel.isHidden = false
            picImageView.isHidden = false
            CategoryLabel.text = "Normal Range"
            picImageView.image = UIImage(named: "normalRange")
        }
        
        //Overweight
        if(bmi >= 25.00 && bmi <= 29.99)
        {
            YourBMILabel.isHidden = false
            resultLabel.isHidden = false
            resultLabel.text = String(bmi)
            CategoryLabel.isHidden = false
            picImageView.isHidden = false
            CategoryLabel.text = "Overweight"
            picImageView.image = UIImage(named: "overweight")
        }
        
        //Obese Classs 1
        if(bmi >= 30.00 && bmi <= 34.99)
        {
            YourBMILabel.isHidden = false
            resultLabel.isHidden = false
            resultLabel.text = String(bmi)
            CategoryLabel.isHidden = false
            picImageView.isHidden = false
            CategoryLabel.text = "Obese Class |"
            picImageView.image = UIImage(named: "obeseClass1")
        }
        
        //Obese Class 2
        if(bmi >= 35.00 && bmi <= 39.99)
        {
            YourBMILabel.isHidden = false
            resultLabel.isHidden = false
            resultLabel.text = String(bmi)
            CategoryLabel.isHidden = false
            picImageView.isHidden = false
            CategoryLabel.text = "Obese Class ||"
            picImageView.image = UIImage(named: "obeseClass2")
        }
        
        //Obese class 3
        if(bmi > 39.99)
        {
            YourBMILabel.isHidden = false
            resultLabel.isHidden = false
            resultLabel.text = String(bmi)
            CategoryLabel.isHidden = false
            picImageView.isHidden = false
            CategoryLabel.text = "Obese Class |||"
            picImageView.image = UIImage(named: "obeseClass3")
        }
        
        
    }
    
    
    
    
}

