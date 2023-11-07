//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var titleLabel: UILabel!
    
    //variables
    var titleAnimationTimer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        titleLabel.text = ""
        
        let titleText = "⚡️David's Chat"
        var currentCharacter = titleText.startIndex
        Timer.scheduledTimer(withTimeInterval: 1/16, repeats: true) { timer in
            self.titleLabel.text?.append(titleText[currentCharacter])
            currentCharacter = titleText.index(after: currentCharacter)
            if currentCharacter == titleText.endIndex { timer.invalidate() }
        }
       
    }
        

}
