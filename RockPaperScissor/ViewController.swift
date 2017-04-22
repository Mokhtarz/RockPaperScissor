//
//  ViewController.swift
//  RockPaperScissor
//
//  Created by iosdev on 10.4.2017.
//  Copyright © 2017 mokhtarz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var userOption: GameChoice!
    var opponentOption: GameChoice!
    
    
    
    @IBAction func sendButton(_ sender: UIButton) {
        
        switch(sender as! UIButton){
        case rock:
            // do something
            userOption = .Rock
            opponentOption = GameChoice()
            //displayResult()
        case paper:
            // do something
            userOption = .Paper
            opponentOption = GameChoice()
            //displayResult()
        case scissors:
            //do something
            userOption = .Scissors
            opponentOption = GameChoice()
            //displayResult()
        default:
            print("handle value")
        }
    }
    
    func displayResult(gameResult: GameResult) -> UIImage {
        
        switch (gameResult) {
        case .Winner:
            if(userOption == GameChoice.Rock){
                return UIImage(named: "RockcrushesScissors")!
            }
            else if (userOption == GameChoice.Paper){
                return UIImage(named: "PapercoversRock")!
            }else{
                return UIImage(named: "ScissorcutPaper")!
            }
        case .Loser:
            if(opponentOption == GameChoice.Rock){
                return UIImage(named: "RockcrushesScissors")!
            }
            else if (opponentOption == GameChoice.Paper){
                return UIImage(named: "PapercoversRock")!
            }else{
                return UIImage(named: "ScissorscutPaper")!
            }
        case .Tie:
            return UIImage(named: "ScissorscutPaper")!
        }
        
       /* //get result of the game
        let myGameResult = gameResult(userOption: userOption, opponentOption: opponentOption)
        //get the result string + image string
        let myResultString = gameResultText(gameResult: myGameResult)
        //trigger the result view controller
        //pass it the result string + image string
        let myStoryBoard = UIStoryboard(name:"Main", bundle:nil)
        let myResultVC = myStoryBoard.instantiateViewController(withIdentifier: "ResultView") as! ResultViewController
        
        myResultVC.resultString = myResultString
        
        if myGameResult == GameResult.Tie{
            myResultVC.imageString = myResultString.stringByReplacingOccurrencesOfString(" ", withString:"")
        }else{
            let tempString = myResultString.stringByReplacingOccurrencesOfString(moreBlah[myGameResult]!, withString:"")
            myResultVC.imageString = tempString.stringByReplacingOccurrencesOfString(" ", withString: "")
        }
        
        self.present(myResultVC, animated: true, completion: nil)
        */

    }
    
    func gameResultText(gameResult:GameResult) -> String{
        switch (gameResult){
        case .Winner:
            return winnerBlah[userOption]! + moreBlah[gameResult]!
        case .Loser:
            return winnerBlah[opponentOption]! + moreBlah[gameResult]!
        case .Tie:
            return moreBlah[gameResult]!
        }
    }
    
    func gameResult(userOption: GameChoice, opponentOption: GameChoice) -> GameResult{
        switch (userOption,opponentOption) {
        case (GameChoice.Rock,GameChoice.Scissors),(GameChoice.Paper,GameChoice.Rock),(GameChoice.Scissors,GameChoice.Paper):
            return GameResult.Winner
        case (GameChoice.Scissors,GameChoice.Rock),(GameChoice.Rock,GameChoice.Paper),(GameChoice.Paper,GameChoice.Scissors):
            return GameResult.Loser
        default:
            return GameResult.Tie
        }
    }
    
    let winnerBlah =
        [GameChoice.Rock:"Rock crushes Scissors",
        GameChoice.Paper:"Paper covers Rock",
        GameChoice.Scissors:"Scissors cut Paper"]
    let moreBlah =
        [GameResult.Winner:"You Win!",
         GameResult.Loser:"You Lose!",
         GameResult.Tie:"It's a Tie!"]
    
    
    
    @IBAction func makeChoice(_ sender: AnyObject) {
    }
    

}
