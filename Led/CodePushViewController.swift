//
//  CodePushViewController.swift
//  Led
//
//  Created by Eunchan Kim on 2023/06/05.
//

import UIKit

class CodePushViewController: UIViewController {
    var name: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            nameLabel.sizeToFit()
        }

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var nameLabel: UILabel!
    


    @IBAction func tapBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
