//
//  ReserveViewController.swift
//  TravelReal
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ReserveViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    @IBOutlet var labelInfo: UILabel!
    @IBOutlet var pickerUniv: UIPickerView!
     let yearArray: Array<String> = ["double", "triple", "family"]
    
    @IBAction func changeSelection(_ sender: UISegmentedControl) {
        if sender == self.oneTwoThree
        {
            let peopleArray: Array<String> = ["1명", "2명", "3명"]
            self.selectLabel.text = peopleArray[sender.selectedSegmentIndex]
        }

    }
    @IBOutlet var displayLabel: UILabel!
    
    @IBOutlet var textFieldInput: UITextField!
    
    @IBOutlet var newTextField: UITextField!
    
    @IBOutlet var displayForm: UILabel!
    
    @IBOutlet var selectLabel: UILabel!
    @IBOutlet var oneTwoThree: UISegmentedControl!
    
    @IBAction func getValue() {
        let year: String = yearArray[self.pickerUniv.selectedRow(inComponent: 0)]
        // let dept: String = deptArray[self.pickerUniv.selectedRow(inComponent: 1)]
        labelInfo.text = year

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return yearArray.count
        
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return yearArray[row]
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { textField.resignFirstResponder()
        return true
    }

    @IBAction func buttonDisplay() {
        displayLabel.text = textFieldInput.text
    }

    
    @IBAction func nameButton() {
        displayForm.text = newTextField.text
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if segue.identifier == "toLastView"{
            
            let destVC = segue.destination as! LastViewController
            
            let ordered: String! = displayLabel.text
            
            destVC.title = ordered
            
            var outString: String = "예약해 주셔서 감사합니다.\n"
            outString += ordered
            outString += " 님 방문시 뵙겠습니다."
            destVC.info = outString
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
}
