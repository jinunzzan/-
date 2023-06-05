//
//  ViewController.swift
//  Led
//
//  Created by Eunchan Kim on 2023/06/05.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapCodePushButton(_ sender: Any) {
        //스토리보드에 있는 뷰컨을 인스턴스 화 해준다
     guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") else {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func tapCodePresentButton(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") else {return}
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
       
    }
}

