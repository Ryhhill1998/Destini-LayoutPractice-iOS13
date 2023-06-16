//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    
    @IBOutlet weak var storyLabel: UILabel!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        let story = storyBrain.getCurrentStory()
        storyLabel.text = story.title
        option1Button.setTitle(story.choice1, for: .normal)
        option2Button.setTitle(story.choice2, for: .normal)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender == option1Button {
            storyBrain.updateCurrentStory(choice: 1)
        } else {
            storyBrain.updateCurrentStory(choice: 2)
        }
        
        updateUI()
    }
}

