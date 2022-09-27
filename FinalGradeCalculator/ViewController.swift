//
//  ViewController.swift
//  FinalGradeCalculator
//
//  Created by Huber, Jakob - Student on 9/26/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        finalSum.isHidden = true
        super.viewDidLoad()
     //   finalResult = ""
        // Do any additional setup after loading the view.
    }
    var testWorthDouble = 0.0
    var currentGradeDouble = 0.0
    var desiredGradeDouble = 0.0
    var testWorthDouble2 = 0.0
    var testWorthString = ""
    var currentGradeString = ""
    var desiredGradeString = ""
    var currentWorth = 0.0
    var currentContribution = 0.0
    var 🥰 = 0.0
    var 🙈🙈 = 0.0
    var 🙈🙈string = ""

    @IBOutlet var finalSum: UILabel!
    
    @IBOutlet var currentGrade: UITextField!
    @IBOutlet var testWorth: UITextField!
    @IBOutlet var desiredGrade: UITextField!
    @IBAction func calculate(_ sender: Any) {
        finalSum.isHidden = false
        testWorthString = testWorth.text ?? ""
        desiredGradeString = desiredGrade.text ?? ""
        currentGradeString = currentGrade.text ?? ""
     
        currentGradeDouble = Double(currentGradeString) ?? 0.0
 
        desiredGradeDouble = Double(desiredGradeString) ?? 0.0
    
        testWorthDouble = Double(testWorthString) ?? 0.0
        
      testWorthDouble2 = testWorthDouble / 100
    
       currentWorth = 1 - testWorthDouble2
        
        currentContribution = currentGradeDouble * currentWorth
     
        🥰 = desiredGradeDouble - currentContribution
        
        🙈🙈 = 🥰 / testWorthDouble2
        
        finalSum.text = "\(🙈🙈)"
        
        
        
        //   testWorthDouble2 = testWorthDouble / 100
        
        
        
    
    }
    
    
    
    
    
    
    
}
