import UIKit

class Registration: UIViewController {

        let mainText = UILabel()
        let passwordLabel = UILabel()
        let userNameLabel = UILabel()
        let textField = UITextField()
        let textField2 = UITextField()
        let textField3 = UITextField()
        let button = UIButton()
        let confirmLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
 mainText.text = "Registration Form"
        mainText.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        mainText.textColor = .white
        
        userNameLabel.text = "Username"
        userNameLabel.textColor = .white
        userNameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        passwordLabel.text = "Password"
        passwordLabel.textColor = .white
        passwordLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        confirmLabel.text = "Confirm Password"
        confirmLabel.textColor = .white
        confirmLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        button.setTitle( "SAVE", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        
        textField.placeholder = "Please Enter Username"
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 5
        
        textField2.placeholder = "Please Enter Password"
        textField2.textColor = .black
        textField2.backgroundColor = .white
        textField2.layer.cornerRadius = 5
        
        textField3.placeholder = "Confirm Password"
        textField3.textColor = .black
        textField3.backgroundColor = .white
        textField3.layer.cornerRadius = 5
        
        [mainText, textField, userNameLabel, userNameLabel, passwordLabel, textField2, button, textField3, confirmLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview($0)
        }
        
        NSLayoutConstraint.activate([
            mainText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
            
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.bottomAnchor.constraint(equalTo: mainText.bottomAnchor, constant: 150),
            textField.widthAnchor.constraint(equalToConstant: 300),
            
            textField2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField2.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textField2.widthAnchor.constraint(equalToConstant: 300),
            
            textField3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField3.bottomAnchor.constraint(equalTo: textField2.bottomAnchor, constant: 70),
            textField3.widthAnchor.constraint(equalToConstant: 300),
           
            userNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userNameLabel.topAnchor.constraint(equalTo: textField.topAnchor, constant: -30),
            userNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            passwordLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordLabel.bottomAnchor.constraint(equalTo: textField.bottomAnchor, constant: 40),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            confirmLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            confirmLabel.topAnchor.constraint(equalTo: textField3.topAnchor, constant: -30),
            confirmLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: textField3.bottomAnchor, constant: 80),
            button.widthAnchor.constraint(equalToConstant: 150),
        ])
    }

}


