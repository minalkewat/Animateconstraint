//
//  ViewController.swift
//  Animateconstraint
//
//  Created by Meenal Kewat on 6/11/19.
//  Copyright © 2019 Meenal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var VCcontainerView: UIView!
    @IBOutlet weak var viewBottomConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.VCcontainerView.layer.cornerRadius = 10
        viewBottomConstraint.constant = -UIScreen.main.bounds.size.height
        self.perform(#selector(bringUpView), with: nil, afterDelay: 0.4)
    }
    
    @objc func bringUpView(){
        UIView.animate(withDuration: 1.0) {
            self.viewBottomConstraint.constant = 10
            self.view.layoutIfNeeded()
        }
    }


}

