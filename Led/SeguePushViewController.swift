//
//  SeguePushViewController.swift
//  Led
//
//  Created by Eunchan Kim on 2023/06/05.
//

import UIKit

class SeguePushViewController: UIViewController {
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
//        self.navigationController?.popToRootViewController(animated: true)
        //네비 첫번째인 루트로 가는거
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        if let name = name{
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
        
        
    }
    
    
}
