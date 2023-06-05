//
//  ViewController.swift
//  Led
//
//  Created by Eunchan Kim on 2023/06/05.
//

import UIKit

class ViewController: UIViewController, SendDetaDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("뷰디드로드")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("뷰윌어피어")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("뷰디드어피어")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("뷰윌디사피어")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("뷰딛디사피어")
    }
    
    @IBAction func tapCodePushButton(_ sender: Any) {
        //스토리보드에 있는 뷰컨을 인스턴스 화 해준다
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else {return}
        vc.name = "코드로"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //세그웨이 실행하기 직전 시스템에 의해서 오버라이드 된 프리페어 메서드가 자동으로 호출됨!
        if let vc = segue.destination as? SeguePushViewController {
            vc.name = "세그,프리페어로 전달"
        }
    }
    
    @IBAction func tapCodePresentButton(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") as? CodePresentViewController else {return}
        vc.name = "코드로전달"
        vc.delegate = self
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
        
    }
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
}

