//
//  ViewController.swift
//  RPS
//
//  Created by Arghya on 11/13/20.
//  Copyright © 2020 Arghya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI(forState: .start)
    }

    @IBAction func rockChosen(_ sender: Any) {
        play(userSign: .rock)
    }
    
    @IBAction func paperChosen(_ sender: Any) {
        play(userSign: .paper)
    }
    
    @IBAction func scissorsChosen(_ sender: Any) {
        play(userSign: .scissors)
    }
    
    @IBAction func playAgain(_ sender: Any) {
        updateUI(forState: .start)
    }
    
    
    func updateUI(forState state: GameState) {
        statusLabel.text = state.status

        switch state {
        case .start:
            view.backgroundColor = .gray
            
            signLabel.text = "🤖"
            playAgainButton.isHidden = true
            
            rockButton.isHidden = false
            paperButton.isHidden = false
            scissorsButton.isHidden = false

            rockButton.isEnabled = true
            paperButton.isEnabled = true
            scissorsButton.isEnabled = true
        
        case .win:
            view.backgroundColor = .green
        case .lose:
            view.backgroundColor = .red
        case .draw:
            view.backgroundColor = .lightGray
        }
    }
    
    func play(userSign: Sign) {
        
        /*let gameState = userSign.gameState(against: opponentSign)
        updateUI(forState: gameState)
        
        signLabel.text = opponentSign.emoji*/
        
        rockButton.isHidden = true
        paperButton.isHidden = true
        scissorsButton.isHidden = true

        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        
        switch userSign {
        case .rock:
            rockButton.isHidden = false
        case .paper:
            paperButton.isHidden = false
        case .scissors:
            scissorsButton.isHidden = false
        }
        
        playAgainButton.isHidden = false
    }
}

/*import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var Rock: UIButton!
    

    @IBAction func rockPressed(_ sender: Any) {
        
    }
    
    @IBOutlet weak var Paper: UIButton!
    
    
    @IBAction func paperPressed(_ sender: Any) {
        
        Paper.isHidden = true
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
*/

