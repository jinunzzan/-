//
//  CodePresentViewController.swift
//  Led
//
//  Created by Eunchan Kim on 2023/06/05.
//

import UIKit

protocol SendDetaDelegate: AnyObject{
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    weak var delegate: SendDetaDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            nameLabel.sizeToFit()
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapBackButton(_ sender: Any) {
//        self.presentingViewController?.dismiss(animated: true)
        self.delegate?.sendData(name: "델리게이트")
        self.dismiss(animated: true)
        //두개 다됨
        
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
