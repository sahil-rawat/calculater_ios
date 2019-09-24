//
//  ViewController.swift
//  Calculater
//
//  Created by Sahil Singh Rawat on 24/09/19.
//  Copyright © 2019 Sahil Singh Rawat. All rights reserved.
//

import UIKit
var op1:Double=0.0
var op2:Double=0.0
var result=0
var performmath=false

class ViewController: UIViewController {
    @IBOutlet weak var text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }
    
 
    @IBAction func numbers(_ sender: UIButton) {
        if performmath==true{
            text.text=String(sender.tag)
            op1=Double(text.text!)!
            performmath=false
        }else{
            text.text=(text.text!)+String(sender.tag)
            op1=Double(text.text!)!
        }
        
        
    }

    @IBAction func buttons(_ sender: UIButton) {
        if text.text != "" && sender.tag != 11 && sender.tag != 16{
            op2=op1
            if sender.tag==12{  //Addition
                text.text="+"
            }else if sender.tag==13{ //subtraction
                text.text="-"
            }else if sender.tag==14{ //multiplication
                text.text="*"
            }else if sender.tag==15{ //division
                text.text="/"
            }
            result=sender.tag
            performmath=true
        }else if sender.tag==16{ //result
            if result==12{
                text.text=String (op2+op1)
            }else if result==13{
                text.text=String (op2-op1)
            }else if result==14{
                text.text=String (op2*op1)
            }else if result==15{
                text.text=String (op2/op1)
            }
        }else if sender.tag==11{// del key
                text.text=""
                op1=0
                op2=0
                result=0
                
            }
            
        }
}

