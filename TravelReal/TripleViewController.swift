//
//  TripleViewController.swift
//  TravelReal
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class TripleViewController: UIViewController {

    @IBOutlet var tripleImageView: UIImageView!
    let tripleImage = UIImage(named: "triple.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tripleImageView.image = tripleImage

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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