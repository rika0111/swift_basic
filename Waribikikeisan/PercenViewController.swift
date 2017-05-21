import UIKit

class PercenViewController: UIViewController {
    
    @IBOutlet weak var priceField: UITextField!
    var price: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // 画面遷移時に呼ばれるメソッド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // PersenViewControllerに数字を渡すための準備
        var resultView = segue.destination as! ResultViewController
        var secondPrice = Int(priceField.text!)
        
        // PercentViewControllerの変数priceに電卓表示画面に残ってる数字を入れる
        resultView.resultnumber = price-(price*secondPrice!/100)
    }
    
    
    // 1ボタンクリックの時呼ばれる
    @IBAction func onePerce(_ sender: Any) {
        cluculaterClick(num: "1")
    }
    
    // 2ボタンクリックの時呼ばれる
    @IBAction func twoPerce(_ sender: Any) {
        cluculaterClick(num: "2")
    }
    
    // 3ボタンクリックの時呼ばれる
    @IBAction func threePerce(_ sender: Any) {
        cluculaterClick(num: "3")
    }
    
    // 4ボタンクリックの時呼ばれる
    @IBAction func fourPerce(_ sender: Any) {
        cluculaterClick(num: "4")
    }
    
    
    // 5ボタンクリックの時呼ばれる
    @IBAction func fivePerce(_ sender: Any) {
        cluculaterClick(num: "5")
    }
    
    // 6ボタンクリックの時呼ばれる
    @IBAction func sixPerce(_ sender: Any) {
        cluculaterClick(num: "6")
    }
    
    // 7ボタンクリックの時呼ばれる
    @IBAction func sevenPerce(_ sender: Any) {
        cluculaterClick(num: "7")
    }
    
    
    // 8ボタンクリックの時呼ばれる
    @IBAction func eightPerce(_ sender: Any) {
        cluculaterClick(num: "8")
    }
    
    
    // 9ボタンクリックの時呼ばれる
    @IBAction func ninePerce(_ sender: Any) {
        cluculaterClick(num: "9")
    }
    
    
    // 0ボタンクリックの時呼ばれる
    @IBAction func zeroPerce(_ sender: Any) {
        cluculaterClick(num: "0")
    }
    
    
    // Cボタンクリックの時呼ばれる
    @IBAction func clearPerce(_ sender: Any) {
        priceField.text =  "0"
    }
    
    
    // ゼロが冒頭に入らないようにするメソッド
    func cluculaterClick (num :String) {
        if priceField.text == "0" {
            priceField.text = num
        }else {
            priceField.text = priceField.text! + num
        }
    }
}
