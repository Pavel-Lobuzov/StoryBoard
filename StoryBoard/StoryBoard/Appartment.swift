import UIKit

class Appartmant: UIViewController {
    let mainText = UILabel()
    let welcomeText = UILabel()
    let segmentedControl = UISegmentedControl()
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        mainText.text = "Appartment control page"
        mainText.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        mainText.textColor = .white
        welcomeText.text = "Welcome Pavel"
        welcomeText.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        welcomeText.textColor = .white
        
 
        
        
        
        
        view.addSubview(mainText)
        view.addSubview(welcomeText)
        view.addSubview(segmentedControl)
        
        mainText.translatesAutoresizingMaskIntoConstraints = false
        welcomeText.translatesAutoresizingMaskIntoConstraints = false
        view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            welcomeText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            
            segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            segmentedControl.centerYAnchor.constraint(equalTo: view.centerYAnchor),
          
            
            
        ])
       
        
    
    }

}

