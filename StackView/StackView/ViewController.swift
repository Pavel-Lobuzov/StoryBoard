//
//  ViewController.swift
//  StackView
//
//  Created by Павел Лобузов on 5.08.25.
//

import UIKit

class ViewController: UIViewController {
    
    let horizontalStackView = UIStackView()
    let horizontalStackView2 = UIStackView()
    let horizontalStackView3 = UIStackView()
    let horizontalStackView4 = UIStackView()
    let verticalStackView = UIStackView()
    let horizontalStackView5 = UIStackView()
    let uiView = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    
        [horizontalStackView,horizontalStackView2,horizontalStackView3,horizontalStackView4,horizontalStackView5].forEach {
            $0.axis = .horizontal
            $0.distribution = .fillEqually
            $0.spacing = 10
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        verticalStackView.axis = .vertical
        verticalStackView.distribution = .fillEqually
        verticalStackView.spacing = 5
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(verticalStackView)
       
        let buttonsNumber = ["7", "8", "9"]
        let buttonsNumber2 = ["4", "5", "6"]
        let buttonsNumber3 = ["1", "2", "3"]
        let buttonsNumber4 = ["0", ".",]
        let buttonsOperator: [String] = ["/", "*", "-", "+", "="]
        let buttonsOperator1: [String] = ["AC", "+/-", "%"]
                              
                              buttonsNumber.forEach {
            let button = UIButton(type: .system)
            button.setTitle($0, for: .normal)
            button.layer.cornerRadius = 32
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .gray
            button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
            horizontalStackView.addArrangedSubview(button)
        }
        buttonsNumber2.forEach {
            let button1 = UIButton(type: .system)
            button1.setTitle($0, for: .normal)
            button1.layer.cornerRadius = 32
            button1.setTitleColor(.white, for: .normal)
            button1.backgroundColor = .gray
            button1.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
            horizontalStackView2.addArrangedSubview(button1)
        }
        buttonsNumber3.forEach {
            let button2 = UIButton(type: .system)
            button2.setTitle($0, for: .normal)
            button2.layer.cornerRadius = 32
            button2.setTitleColor(.white, for: .normal)
            button2.backgroundColor = .gray
            button2.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
            horizontalStackView3.addArrangedSubview(button2)
        }
        buttonsNumber4.forEach {
            let button3 = UIButton(type: .system)
            button3.setTitle($0, for: .normal)
            button3.layer.cornerRadius = 32
            button3.setTitleColor(.white, for: .normal)
            button3.backgroundColor = .gray
            button3.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
            horizontalStackView4.addArrangedSubview(button3)
        }
        buttonsOperator.forEach {
            let button4 = UIButton(type: .system)
            button4.setTitle($0, for: .normal)
            button4.layer.cornerRadius = 32
            button4.setTitleColor(.white, for: .normal)
            button4.backgroundColor = .orange
            button4.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
            verticalStackView.addArrangedSubview(button4)
        }
        buttonsOperator1.forEach {
            let button5 = UIButton(type: .system)
            button5.setTitle($0, for: .normal)
            button5.layer.cornerRadius = 32
            button5.setTitleColor(.black, for: .normal)
            button5.backgroundColor = .systemGray2
            button5.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
            horizontalStackView5.addArrangedSubview(button5)
        }
            NSLayoutConstraint.activate([
                horizontalStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: 90),
                horizontalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                horizontalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
                horizontalStackView.heightAnchor.constraint(equalToConstant: 80)
            ])
                                  NSLayoutConstraint.activate([
                                    horizontalStackView2.bottomAnchor.constraint(equalTo: horizontalStackView.bottomAnchor, constant: 90),
                                      horizontalStackView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                                      horizontalStackView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
                                      horizontalStackView2.heightAnchor.constraint(equalToConstant: 85)
                                  ])
        NSLayoutConstraint.activate([
          horizontalStackView3.bottomAnchor.constraint(equalTo: horizontalStackView2.bottomAnchor, constant: 85),
            horizontalStackView3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            horizontalStackView3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
            horizontalStackView3.heightAnchor.constraint(equalToConstant: 80)
        ])
        NSLayoutConstraint.activate([
          horizontalStackView4.bottomAnchor.constraint(equalTo: horizontalStackView3.bottomAnchor, constant: 85),
            horizontalStackView4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            horizontalStackView4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
            horizontalStackView4.heightAnchor.constraint(equalToConstant: 80),
        ])
        NSLayoutConstraint.activate([
            verticalStackView.centerYAnchor.constraint(equalTo: horizontalStackView5.centerYAnchor, constant: 170),
        verticalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            verticalStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            verticalStackView.leadingAnchor.constraint(equalTo: horizontalStackView.leadingAnchor, constant: 290),
            ])
        NSLayoutConstraint.activate([
            horizontalStackView5.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: 5),
              horizontalStackView5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
              horizontalStackView5.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
              horizontalStackView5.heightAnchor.constraint(equalToConstant: 80)
            ])
        }
    }

