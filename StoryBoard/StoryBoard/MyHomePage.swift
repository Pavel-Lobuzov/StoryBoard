import UIKit

class MyHomePage: UIViewController {
    
    let mainText = UILabel()
    let passwordLabel = UILabel()
    let registerLabel = UILabel()
    let userNameLabel = UILabel()
    let textField = UITextField()
    let textField2 = UITextField()
    let button = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
          
        view.backgroundColor = .gray
 mainText.text = "My Home Control"
        mainText.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        mainText.textColor = .white
    
        userNameLabel.text = "Username"
        userNameLabel.textColor = .white
        userNameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        passwordLabel.text = "Password"
        passwordLabel.textColor = .white
        passwordLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        registerLabel.text = "Register"
        registerLabel.textColor = .white
        registerLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        button.setTitle( "Log in", for: .normal)
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
     

        [mainText, textField, textField2, userNameLabel, passwordLabel, registerLabel, button].forEach {
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
           
          

            
            userNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userNameLabel.topAnchor.constraint(equalTo: textField.topAnchor, constant: -30),
            passwordLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordLabel.bottomAnchor.constraint(equalTo: textField.bottomAnchor, constant: 40),
            
            registerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            registerLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 100),
            button.widthAnchor.constraint(equalToConstant: 150),
            

         
        
        ])
    }

}


