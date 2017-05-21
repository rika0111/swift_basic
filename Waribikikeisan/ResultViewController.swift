import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultTextView: UITextField!
    var resultnumber: Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultTextView.text = String(resultnumber)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
