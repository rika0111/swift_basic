//  ResultViewController.swift

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
