//
//  ErrorsViewController.swift
//  tester
//
//  Created by Lynn Harland on 7/29/20.
//  Copyright © 2020 AMC interns. All rights reserved.
//

import UIKit

class ErrorsViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func didTapHomeButton(){
        let vc = storyboard?.instantiateViewController(identifier: "home") as! ViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
    }
    
    @IBAction func didTapReportButton(){
        let vc = storyboard?.instantiateViewController(identifier: "giantreport") as! GiantViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
    }
    
    @IBAction func didTapAirfieldButton(){
        let vc = storyboard?.instantiateViewController(identifier: "airfield") as! AirfieldViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
    }

    

}
