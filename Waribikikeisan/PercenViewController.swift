// 割引View

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
        resultView.result = price-(price*secondPrice!/100)
    }
    
    
    // 1ボタンクリックの時呼ばれる
    @IBAction func onePerce(_ sender: Any) {
        cluculaterClick(num: "1")
    }
    
    // 2ボタンクリックの時呼ばれる
    @IBAction func twoPerce(_ sender: Any) {
        cluculaterClick(num: "2")
    }
    
    
    @IBAction func threePerce(_ sender: Any) {
        cluculaterClick(num: "3")
    }
    
    
    @IBAction func fourPerce(_ sender: Any) {
        cluculaterClick(num: "4")
    }
    
    
    @IBAction func fivePerce(_ sender: Any) {
        cluculaterClick(num: "5")
    }
    
    
    @IBAction func sixPerce(_ sender: Any) {
        cluculaterClick(num: "6")
    }
    
    
    @IBAction func sevenPerce(_ sender: Any) {
        cluculaterClick(num: "7")
    }
    
    
    @IBAction func eightPerce(_ sender: Any) {
        cluculaterClick(num: "8")
    }
    
    
    @IBAction func ninePerce(_ sender: Any) {
        cluculaterClick(num: "9")
    }
    
    
    @IBAction func zeroPerce(_ sender: Any) {
        cluculaterClick(num: "0")
    }
    
    
    @IBAction func clearPerce(_ sender: Any) {
        priceField.text =  "0"
    }
    
    
    // ゼロが冒頭に入らないようにする
    func cluculaterClick (num :String) {
        if priceField.text == "0" {
            priceField.text = num
        }else {
            priceField.text = priceField.text! + num
        }
    }
}
