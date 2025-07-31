import UIKit

class ViewController: UIViewController {
    var button1 = UIButton()
    var button2 = UIButton()
    var button3 = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        let setButton = [button1, button2, button3]
        
        button1.setTitle( "MY Home Control", for: .normal)
        button1.tintColor = .black
        button2.setTitle( "Appatrment control page", for: .normal)
        button2.tintColor = .black
        button3.setTitle("Registration form", for: .normal)
        
    
     
        for setButton in setButton {
            setButton.backgroundColor = .gray
            setButton.setTitleColor(.yellow, for: .normal)
            setButton.layer.cornerRadius = 10
            setButton.layer.shadowColor = UIColor.black.cgColor
            setButton.layer.shadowOpacity = 1.5
            setButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        }
        
       
        
        button1.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button2.addTarget(self, action: #selector(buttonTapped2), for: .touchUpInside)
        button3.addTarget(self, action: #selector(buttonTapped3), for: .touchUpInside)
        
        setButton.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        NSLayoutConstraint.activate([
            button1.centerXAnchor.constraint(greaterThanOrEqualTo: view.centerXAnchor),
            button1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 30),
            button2.centerXAnchor.constraint(equalTo: button1.centerXAnchor),
            button3.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 30),
            button3.centerXAnchor.constraint(equalTo: button2.centerXAnchor),
            
        ])
    }
    @objc func buttonTapped() {
        let button = MyHomePage()
        present(button, animated: true)}
    @objc func buttonTapped2() {
        let button2 = Registration()
        present(button2, animated: true)
        }
    @objc func buttonTapped3() {
        let button3 = Appartmant()
        present(button3, animated: true)
    }

}


