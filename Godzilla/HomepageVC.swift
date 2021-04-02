//
//  HomepageVC.swift
//  Godzilla
//
//  Created by 王昱中 on 2021/4/2.
//

import UIKit
import SnapKit

class HomepageVC: UIViewController {
    var lb = UILabel(frame: .zero)
    var btn = UIButton(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createUI()
    }
}

extension HomepageVC {
    func createUI() {
        self.navigationItem.title = "抽獎系統"
        self.view.backgroundColor = .white
        
        self.view.addSubview(lb)
        lb.text = "10抽必中SSR"
        lb.font = UIFont.systemFont(ofSize: 30)
        lb.textColor = .black
        lb.snp.makeConstraints({
            $0.top.equalToSuperview().offset(200)
            $0.centerX.equalToSuperview()
            $0.width.greaterThanOrEqualTo(100)
            $0.width.lessThanOrEqualTo(200)
            $0.height.greaterThanOrEqualTo(32)
        })
        
        self.view.addSubview(btn)
        btn.backgroundColor = .orange
        btn.snp.makeConstraints({
            $0.bottom.equalToSuperview().offset(-40)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(300)
            $0.height.equalTo(80)
        })
        btn.setTitle("抽獎", for: .normal)
        btn.addTarget(self, action: #selector(handleBtnTapped), for: .touchDown)
    }
    
    func bindUI() {
        
    }
}

extension HomepageVC {
    @objc func handleBtnTapped() {
        let resultVC = ResultVC()
//        resultVC.modalPresentationStyle = .fullScreen
        
//        self.btn.isEnabled = false
        self.btn.backgroundColor = .systemGray2
        
//        self.shohw(resultVC, sender: self)
        self.present(resultVC, animated: true, completion: nil)
//        self.navigationController?.pushViewController(resultVC, animated: true)
        
        print("btn tapped!")
//        btn.addTarget(self, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
    }
}
