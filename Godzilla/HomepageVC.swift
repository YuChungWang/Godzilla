//
//  HomepageVC.swift
//  Godzilla
//
//  Created by 王昱中 on 2021/4/2.
//

import UIKit
import SnapKit

class HomepageVC: UIViewController {
    var btn = UIButton(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
    
        btn.backgroundColor = .blue
        self.view.addSubview(btn)
        btn.snp.makeConstraints({
            $0.bottom.equalToSuperview().offset(-40)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(300)
            $0.height.equalTo(80)
        })
        // Do any additional setup after loading the view.
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
