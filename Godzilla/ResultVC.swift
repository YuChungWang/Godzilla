//
//  ResultVC.swift
//  Godzilla
//
//  Created by 王昱中 on 2021/4/2.
//

import UIKit
import SnapKit

class ResultVC: UIViewController {
    var lb = UILabel()
    var resultArr: [String] = ["孫悟空", "皮卡丘", "庫拉皮卡"]

    override func viewDidLoad() {
        super.viewDidLoad()

        createUI()
        bindUI()
    }
}

extension ResultVC {
    func createUI() {
        self.view.backgroundColor = .orange
        self.view.addSubview(lb)
        lb.font = UIFont.systemFont(ofSize: 30)
        lb.snp.makeConstraints({
            $0.center.equalToSuperview()
        })
    }

    func bindUI() {
        let num = Int.random(in: 0...resultArr.count - 1)
        self.lb.text = resultArr[num]
    }
}
