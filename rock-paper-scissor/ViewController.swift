//
//  ViewController.swift
//  rock-paper-scissor
//
//  Created by Wildan on 02/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ImageComp: UIImageView!
    
    @IBOutlet weak var ImagePlayer: UIImageView!
    
    @IBOutlet weak var TextScore: UILabel!
    
    let arrImage = ["paper","scissors","rock"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ImageComp.image = UIImage(named: "ask")
        ImagePlayer.image = UIImage(named: "ask")
        
//        ImageComp.transform = ImageComp.transform.rotated(by: 360)
        
        TextScore.text = "Let's Gooo!"
        TextScore.font = UIFont.systemFont(ofSize: 20)
    }

    @IBAction func ButtonRun(_ sender: UIButton) {
        let numberOne = Int.random(in: 0...2)
        let numberTwo = Int.random(in: 0...2)
        
        ImageComp.image = UIImage(named: "\(arrImage[numberOne])")
        ImagePlayer.image = UIImage(named: "\(arrImage[numberTwo])")
        
        TextScore.text = checkScore(numberOne: numberTwo, numberTwo: numberOne)
    }
    
    func checkScore(numberOne:Int, numberTwo:Int)->String {
        
        if(numberOne==0){
            if(numberTwo==1){
                return "Loose 😢"
            }else if(numberTwo==2){
                return "Win 🏆"
            }else {
                return "Draw"
            }
        }else if(numberOne==1){
            if(numberTwo==1){
                return "Draw"
            }else if(numberTwo==2){
                return "Loose 😢"
            }else {
                return "Win 🏆"
            }
        }else if(numberOne==2){
            if(numberTwo==1){
                return "Win 🏆"
            }else if(numberTwo==2){
                return "Draw"
            }else {
                return "Loose 😢"
            }
        }else{
            return "Draw"
        }
    }
}

