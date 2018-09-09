//
//  PayViewController.swift
//  IOU
//
//  Created by Harshavardhan K on 08/09/18.
//  Copyright © 2018 Harshavardhan K. All rights reserved.
//

import UIKit

class PayViewController: UIViewController {
    
    var person: People!

    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var theyOweYou: UILabel!
    @IBOutlet weak var youOweThem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = person.name
        
        let totalAmount = person.amountYouOweThem - person.amountTheyOweYou
        
        theyOweYou.text = "\(person.amountTheyOweYou)"
        youOweThem.text = "\(person.amountYouOweThem)"
        total.text = "\(totalAmount)"
        
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
