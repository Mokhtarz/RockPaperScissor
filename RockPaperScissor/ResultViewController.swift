//
//  ResultViewController.swift
//  RockPaperScissor
//
//  Created by iosdev on 11.4.2017.
//  Copyright © 2017 mokhtarz. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    var resultString: String!
    var imageString: String!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        myLabel.text = resultString
        myImageView.image = UIImage(named: imageString)
    }
    
    @IBAction func playAgain(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
