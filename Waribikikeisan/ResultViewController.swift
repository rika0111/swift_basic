//
//  ResultViewController.swift
//  Waribikikeisan
//
//  Created by Rika on 2017/05/07.
//  Copyright © 2017年 Rika. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultTextView: UITextField!
    var result: Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultTextView.text = String(result)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
