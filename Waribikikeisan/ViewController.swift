// 最初のView

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var priceField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    // 画面遷移時に呼ばれるメソッド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // PersenViewControllerに数字を渡すための準備
        var percentView = segue.destination as! PercenViewController
        var firtstPrice = Int(priceField.text!)

        // PercentViewControllerの変数priceに電卓表示画面に残ってる数字を入れる
        percentView.price = firtstPrice!
        
    }
    
    
    //1ボタンクリックの時呼ばれる
    @IBAction func oneButton(_ sender: Any) {
        cluculaterClick(num: "1")
    }
    
    
    @IBAction func twoButton(_ sender: Any) {
        cluculaterClick(num: "2")
    }
    
    
    @IBAction func threeButton(_ sender: Any) {
        cluculaterClick(num: "3")
    }
    
    
    @IBAction func fourButton(_ sender: Any) {
        cluculaterClick(num: "4")
    }
    
    
    @IBAction func fiveButton(_ sender: Any) {
        cluculaterClick(num: "5")
    }
    
    
    @IBAction func sixButton(_ sender: Any) {
        cluculaterClick(num: "6")
    }
    
    
    @IBAction func sevenButton(_ sender: Any) {
        cluculaterClick(num: "7")
    }
    
    
    @IBAction func eightButton(_ sender: Any) {
        cluculaterClick(num: "8")
    }
    
    
    @IBAction func nineButton(_ sender: Any) {
        cluculaterClick(num: "9")
    }
    

    @IBAction func zeroButton(_ sender: Any) {
        cluculaterClick(num: "0")
    }
    
    
    @IBAction func zerozeroButton(_ sender: Any) {
        cluculaterClick(num: "00")
    }
    
    
    @IBAction func clearButton(_ sender: Any) {
        priceField.text =  "0"
    }
    

    // ゼロが冒頭に入らないようにする
    func cluculaterClick (num :String) {
        if priceField.text == "0" {
            if num == "00" {
                priceField.text = "0"
            } else {
                priceField.text = num
            }
        }else {
            priceField.text = priceField.text! + num
        }
     }
}

