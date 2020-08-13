//
//  ViewController.swift
//  tester
//
//  Created by Lynn Harland on 7/8/20.
//  Copyright © 2020 AMC interns. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    //code for the scrolling airplanes
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return pickerData[row]
    }
    

    @IBOutlet weak var picker: UIPickerView!
    
    var pickerData:[String] = [String]()
    
    //code for the taking input then outputing
    
    @IBOutlet var field: UITextField!
    
    @IBOutlet var airfieldinput: UITextField!
    
    //@IBOutlet var tirePressureInput: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.picker.delegate = self
        self.picker.dataSource = self
        pickerData = ["C-5","C-17","C-21","C-32","C-37","C-40","C-130","KC-10","KC-46","KC-135","B747"]
        
    }
    
    
    @IBAction func didTapSave(){
        NotificationCenter.default.post(name: Notification.Name("text"), object: field.text)

    }
    
    @IBAction func didTapButton(){
        let vc = storyboard?.instantiateViewController(identifier: "airfield") as! AirfieldViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
    }


}

