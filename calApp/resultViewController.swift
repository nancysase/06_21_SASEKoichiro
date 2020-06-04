//
//  resultViewController.swift
//  calApp
//
//  Created by SASE Koichiro on 2020/06/04.
//  Copyright © 2020 SASE Koichiro. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.numberOfLines = 2
        guard let getResult =  UserDefaults.standard.string(forKey: "result") else {return}
        resultLabel.text = "\(getResult)問\n正解です"
        timeLabel.numberOfLines = 3
        guard let getTime = UserDefaults.standard.string(forKey: "time") else {return}
        timeLabel.text = "かかった時間は\n\(getTime)秒\nでした"

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func moveToStartView(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
