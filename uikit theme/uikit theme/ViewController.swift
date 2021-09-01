//
//  ViewController.swift
//  uikit theme
//
//  Created by Osman Solomon on 01/09/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var customViewRef: CustomView!
    let appRedColor = UIColor(named: "AppRed")
    override func viewDidLoad() {
        super.viewDidLoad()
        customViewRef.mainLbl.text = "hi bitch"
        customViewRef.mainLbl.bodyStyle()
        // Do any additional setup after loading the view.
    }


}


extension UILabel{
    func bodyStyle(){
    self.textColor = .red
    }
}
