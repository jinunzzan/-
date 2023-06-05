//
//  CodePresentViewController.swift
//  Led
//
//  Created by Eunchan Kim on 2023/06/05.
//

import UIKit

class CodePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapBackButton(_ sender: Any) {
//        self.presentingViewController?.dismiss(animated: true)
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
