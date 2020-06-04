//
//  ViewController.swift
//  calApp
//
//  Created by SASE Koichiro on 2020/05/31.
//  Copyright © 2020 SASE Koichiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButton(_ sender: Any) {
        let vc = calViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    

    
}

