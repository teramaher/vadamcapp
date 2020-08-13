//
//  AirfieldViewController.swift
//  tester
//
//  Created by Lynn Harland on 7/16/20.
//  Copyright © 2020 AMC interns. All rights reserved.
//

import UIKit

class AirfieldViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(didGetNotification(_:)), name: Notification.Name("text"), object: nil)
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func didGetNotification(_ notification: Notification){
        let text = notification.object as! String
        label.text = text
    }
    
    @IBAction func didTapHomeButton(){
        let vc = storyboard?.instantiateViewController(identifier: "home") as! ViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
    }
    
    @IBAction func didTapDetailsButton(){
        let vc = storyboard?.instantiateViewController(identifier: "errors") as! ErrorsViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
    }
    
    @IBAction func didTapReportButton(){
        let vc = storyboard?.instantiateViewController(identifier: "giantreport") as! GiantViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
    }




}
