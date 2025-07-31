import UIKit

class MyHomePage: UIViewController {
    var titleText = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
 titleText.text = "My Home Page"
        titleText.textColor = .red
        self.view.addSubview(titleText)
        titleText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
            
        ])
    }

}


