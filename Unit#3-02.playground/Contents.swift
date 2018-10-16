// Created on: October 2018 
// Created by: Mark Ison
// Created for: ICS3CR
// This program is for guessing game 
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let NUMBER_TO_GUESS : Int = Int(arc4random_uniform(10) + 1)
    
    let instructionLabel = UILabel()
    let numberTextField = UITextField()
    let guessButton = UIButton()
    let answerLabel = UILabel()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "pick a number between 1-10"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        numberTextField.borderStyle = UITextBorderStyle.roundedRect
        numberTextField.placeholder = "Enter #"
        view.addSubview(numberTextField)
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        numberTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        numberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        guessButton.setTitle("Guess", for: .normal)
        guessButton.setTitleColor(.blue, for: .normal)
        guessButton.titleLabel?.textAlignment = .center
        guessButton.addTarget(self, action: #selector(checkNumber), for: .touchUpInside)
        view.addSubview(guessButton)
        guessButton.translatesAutoresizingMaskIntoConstraints = false
        guessButton.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 20).isActive = true
        guessButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: guessButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    @objc func checkNumber() {
         
        
        //input
        let numberEntered : Int = Int(numberTextField.text!)!
        
        // process
        if numberEntered == NUMBER_TO_GUESS {
            //output
            answerLabel.text = "Wow!"
            
        } else {
            answerLabel.text = "Try Again"
        }
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()


