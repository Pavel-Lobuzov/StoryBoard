//
//  ViewController.swift
//  StoryBoard
//
//  Created by Павел Лобузов on 30.07.25.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var batton1: UIButton!
    @IBOutlet weak var batton2: UIButton!
    
    @IBOutlet weak var batton3: UIButton!
    
    let titleText: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        batton1.titleLabel?.textColor = .black
        batton2.titleLabel?.textColor = .black
        batton3.titleLabel?.textColor = .black
        
        titleText.text = "Home Page"
        titleText.textColor = .black
        titleText.font = UIFont.systemFont(ofSize: 30)
        titleText.textAlignment = .center
        self.view.addSubview(titleText)
        titleText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleText.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 30),
            titleText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
        ])
            
        
        
    }

}



