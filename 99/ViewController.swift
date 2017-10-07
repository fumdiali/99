//
//  ViewController.swift
//  99
//
//  Created by Apple on 07/10/2017.
//  Copyright © 2017 Qilobyt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gridOneLabel: UIButton!
    @IBOutlet weak var gridTwoLabel: UIButton!
    @IBOutlet weak var gridThreeLabel: UIButton!
    @IBOutlet weak var gridFourLabel: UIButton!
    @IBOutlet weak var gridFiveLabel: UIButton!
    @IBOutlet weak var gridSixLabel: UIButton!
    @IBOutlet weak var gridSevenLabel: UIButton!
    @IBOutlet weak var gridEightLabel: UIButton!
    @IBOutlet weak var gridNineLabel: UIButton!
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    


    
    var seconds = 99 //This variable will hold a starting value of seconds. It could be any amount above 0.
    
    var score = 0
    
    var timer = Timer()
    
    var isTimerRunning = false //This will be used to make sure only one timer is created at a time.
    
    func disableButton(){
       gridOneLabel.isEnabled = false
       gridTwoLabel.isEnabled = false
       gridThreeLabel.isEnabled = false
        gridFourLabel.isEnabled = false
        gridFiveLabel.isEnabled = false
        gridSixLabel.isEnabled = false
        gridSevenLabel.isEnabled = false
        gridEightLabel.isEnabled = false
        gridNineLabel.isEnabled = false
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(updateTimer)), userInfo: nil, repeats: true)
    }
    
    func updateTimer() {
        if seconds > 1 {
        seconds -= 1     //This will decrement(count down)the seconds.
        timerLabel.text = "Time : \(seconds)" //This will update the label.
        }else{
        disableButton()
        timerLabel.text = "Time : 0"
        }
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        runTimer()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // methods for grid buttons
    @IBAction func gridOneAction(_ sender: UIButton)
    {
        let g1Rand = Int(arc4random_uniform(51))
        gridOneLabel.setTitle("\(g1Rand)", for: UIControlState.normal)
        
        if g1Rand < 10 {
            gridOneLabel.backgroundColor = UIColor.orange
        }
        if g1Rand >= 10 && g1Rand < 25{
          gridOneLabel.backgroundColor = UIColor.green
        }
        if g1Rand > 25 && g1Rand < 50{
            gridOneLabel.backgroundColor = UIColor.blue
        }
        if g1Rand == 50 {
          gridOneLabel.backgroundColor = UIColor.red
          gridOneLabel.setTitle("\(g1Rand)", for: UIControlState.normal)
          gridOneLabel.isEnabled = false
          score = score + 50
          scoreLabel.text = "Score : \(score)"
        }
        if seconds == 0 {
          gridOneLabel.isEnabled = false
        }
        
    }
    @IBAction func gridTwoAction(_ sender: UIButton)
    {
        let g2Rand = Int(arc4random_uniform(51))
        gridTwoLabel.setTitle("\(g2Rand)", for: UIControlState.normal)
        if g2Rand < 10 {
            gridTwoLabel.backgroundColor = UIColor.orange
        }
        if g2Rand >= 10 && g2Rand < 25{
            gridTwoLabel.backgroundColor = UIColor.green
        }
        if g2Rand > 25 && g2Rand < 50{
            gridTwoLabel.backgroundColor = UIColor.blue
        }
        if g2Rand == 50{
            gridTwoLabel.backgroundColor = UIColor.red
            gridTwoLabel.setTitle("\(g2Rand)", for: UIControlState.normal)
            gridTwoLabel.isEnabled = false
            score = score + 50
            scoreLabel.text = "Score : \(score)"
        }
       
        
    }
    @IBAction func gridThreeAction(_ sender: UIButton)
    {
        let g3Rand = Int(arc4random_uniform(51))
        gridThreeLabel.setTitle("\(g3Rand)", for: UIControlState.normal)
        
        if g3Rand < 10 {
            gridThreeLabel.backgroundColor = UIColor.orange
        }
        if g3Rand >= 10 && g3Rand < 25{
            gridThreeLabel.backgroundColor = UIColor.green
        }
        if g3Rand > 25 && g3Rand < 50{
            gridThreeLabel.backgroundColor = UIColor.blue
        }
        if g3Rand == 50{
            gridThreeLabel.backgroundColor = UIColor.red
            gridThreeLabel.setTitle("\(g3Rand)", for: UIControlState.normal)
            gridThreeLabel.isEnabled = false
            score = score + 50
            scoreLabel.text = "Score : \(score)"
        }
        
        
    }
    @IBAction func gridFourAction(_ sender: UIButton)
    {
        let g4Rand = Int(arc4random_uniform(51))
        gridFourLabel.setTitle("\(g4Rand)", for: UIControlState.normal)
        
        if g4Rand < 10 {
            gridFourLabel.backgroundColor = UIColor.orange
        }
        if g4Rand >= 10 && g4Rand < 25{
            gridFourLabel.backgroundColor = UIColor.green
        }
        if g4Rand > 25 && g4Rand < 50{
            gridFourLabel.backgroundColor = UIColor.blue
        }
        if g4Rand == 50{
            gridFourLabel.backgroundColor = UIColor.red
            gridFourLabel.setTitle("\(g4Rand)", for: UIControlState.normal)
            gridFourLabel.isEnabled = false
            score = score + 50
            scoreLabel.text = "Score : \(score)"
        }
        
        
    }
    @IBAction func gridFiveAction(_ sender: UIButton)
    {
        let g5Rand = Int(arc4random_uniform(51))
        gridFiveLabel.setTitle("\(g5Rand)", for: UIControlState.normal)
        //set button colours
        if g5Rand < 10 {
            gridFiveLabel.backgroundColor = UIColor.orange
        }
        if g5Rand >= 10 && g5Rand < 25{
            gridFiveLabel.backgroundColor = UIColor.green
        }
        if g5Rand > 25 && g5Rand < 50{
            gridFiveLabel.backgroundColor = UIColor.blue
        }
        if g5Rand == 50{
            gridFiveLabel.backgroundColor = UIColor.red
            gridFiveLabel.setTitle("\(g5Rand)", for: UIControlState.normal)
            gridFiveLabel.isEnabled = false
            score = score + 50
            scoreLabel.text = "Score : \(score)"
        }
        
    }
    @IBAction func gridSixAction(_ sender: UIButton)
    {
        let g6Rand = Int(arc4random_uniform(51))
        gridSixLabel.setTitle("\(g6Rand)", for: UIControlState.normal)
        //set button colours
        if g6Rand < 10 {
            gridSixLabel.backgroundColor = UIColor.orange
        }
        if g6Rand >= 10 && g6Rand < 25{
            gridSixLabel.backgroundColor = UIColor.green
        }
        if g6Rand > 25 && g6Rand < 50{
            gridSixLabel.backgroundColor = UIColor.blue
        }
        if g6Rand == 50{
            gridSixLabel.backgroundColor = UIColor.red
            gridSixLabel.setTitle("\(g6Rand)", for: UIControlState.normal)
            gridSixLabel.isEnabled = false
            score = score + 50
            scoreLabel.text = "Score : \(score)"
        }
            }
    @IBAction func gridSevenAction(_ sender: UIButton)
    {
        let g7Rand = Int(arc4random_uniform(51))
        gridSevenLabel.setTitle("\(g7Rand)", for: UIControlState.normal)
        
        //set button colours
        if g7Rand < 10 {
            gridSevenLabel.backgroundColor = UIColor.orange
        }
        if g7Rand >= 10 && g7Rand < 25{
            gridSevenLabel.backgroundColor = UIColor.green
        }
        if g7Rand > 25 && g7Rand < 50{
            gridSevenLabel.backgroundColor = UIColor.blue
        }
        if g7Rand == 50{
            gridSevenLabel.backgroundColor = UIColor.red
            gridSevenLabel.setTitle("\(g7Rand)", for: UIControlState.normal)
            gridSevenLabel.isEnabled = false
            score = score + 50
            scoreLabel.text = "Score : \(score)"
        }
       
        
    }
    @IBAction func gridEightAction(_ sender: UIButton)
    {
        let g8Rand = Int(arc4random_uniform(51))
        gridEightLabel.setTitle("\(g8Rand)", for: UIControlState.normal)
        
        if g8Rand < 10 {
            gridEightLabel.backgroundColor = UIColor.orange
        }
        if g8Rand >= 10 && g8Rand < 25{
            gridEightLabel.backgroundColor = UIColor.green
        }
        if g8Rand > 25 && g8Rand < 50{
            gridEightLabel.backgroundColor = UIColor.blue
        }
        if g8Rand == 50{
            gridEightLabel.backgroundColor = UIColor.red
            gridEightLabel.setTitle("\(g8Rand)", for: UIControlState.normal)
            gridEightLabel.isEnabled = false
            score = score + 50
            scoreLabel.text = "Score : \(score)"
        }
        
        
    }
    @IBAction func gridNineAction(_ sender: UIButton)
    {
        let g9Rand = Int(arc4random_uniform(51))
        gridNineLabel.setTitle("\(g9Rand)", for: UIControlState.normal)
        
        if g9Rand < 10 {
            gridNineLabel.backgroundColor = UIColor.orange
        }
        if g9Rand >= 10 && g9Rand < 25{
            gridNineLabel.backgroundColor = UIColor.green
        }
        if g9Rand > 25 && g9Rand < 50{
            gridNineLabel.backgroundColor = UIColor.blue
        }
        if g9Rand == 50{
            gridNineLabel.backgroundColor = UIColor.red
            gridNineLabel.setTitle("\(g9Rand)", for: UIControlState.normal)
            gridNineLabel.isEnabled = false
            score = score + 50
            scoreLabel.text = "Score : \(score)"
        }
        
    }
    
    


} //end of class

