//
//  ViewController.swift
//  BMI
//
//  Created by MacBook Pro  on 2016/11/24.
//  Copyright © 2016年 yucong shen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var bmiTipLabel: UILabel!
    @IBOutlet weak var rangeTipLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var rangeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text=""
        bmiTipLabel.text=""
        rangeLabel.text=""
        rangeTipLabel.text=""
    }
    @IBAction func caculate(_ sender: UIButton) {
        guard let heightText=heightTextField.text,!heightText.isEmpty,let weightText=weightTextField.text,!weightText.isEmpty,let weight=Double(weightText),let height = Double(heightText)
        else {
            let alertController=UIAlertController(title: "错误提示信息", message: "输入信息不能为空", preferredStyle: .alert)
            let okAction=UIAlertAction(title: "ok", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
            return
        }
            //控制在两位数
            let bmi=weight/(height*height)
            bmiLabel.text=String(format: "%.1f", bmi)
            bmiTipLabel.text="Your BMI is:"
            rangeTipLabel.text="Which is in the range:"
            if bmi < 18.4{
                rangeLabel.text="Under Weight"
            }else if bmi <= 25.0{
                rangeLabel.text="Normal Weight"
            }else if bmi <= 30{
                rangeLabel.text="Over Weight"
            }else{
                rangeLabel.text="Obese"
            }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

