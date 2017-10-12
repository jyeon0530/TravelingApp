//
//  ViewController.swift
//  TravelReal
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let purpleColor = UIColor.purple
    var backgroundColor = UIColor.purple
    @IBOutlet var labelInfo: UILabel!
    @IBOutlet var picketDateTime: UIDatePicker!
    
    @IBOutlet var labelform: UILabel!
    @IBOutlet var picketDate: UIDatePicker!
    
    @IBAction func getDateTime() {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .long
        //dateFormatter.timeStyle = .medium
        
        self.labelInfo.text = dateFormatter.string(from: self.picketDateTime.date)
        
    }
    @IBAction func getLastDate() {
        
        let dateFFormatter = DateFormatter()
        
        dateFFormatter.dateStyle = .long
        
        self.labelform.text = dateFFormatter.string(from: self.picketDate.date)
        

        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = purpleColor
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

