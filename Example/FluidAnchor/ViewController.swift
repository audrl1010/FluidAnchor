//
//  ViewController.swift
//  FluidAnchor
//
//  Created by audrl1010 on 10/08/2017.
//  Copyright (c) 2017 audrl1010. All rights reserved.
//

import UIKit
import FluidAnchor

class ViewController: UIViewController {
  var myView = UIView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    myView.backgroundColor = .red
    
    self.view.addSubview(myView)
    
    myView.flu
      .topAnchor(equalTo: topLayoutGuide.bottomAnchor, constant: 5)
      .leftAnchor(equalTo: view.leftAnchor, constant: 5)
      .rightAnchor(equalTo: view.rightAnchor, constant: -5)
      .bottomAnchor(equalTo: bottomLayoutGuide.topAnchor, constant: -5)
  }
}










