//
//  ViewController.swift
//  Hello
//
//  Created by Gabriel Sabastian Hayes on 10/25/17.
//  Copyright © 2017 Gabriel Sabastian Hayes. All rights reserved.
//

import UIKit
import AVFoundation
var player: AVAudioPlayer?
class ViewController: UIViewController {
    @IBOutlet weak var greeting: UITextView!
    @IBOutlet weak var mainBackGround: UIImageView!
    
    @IBOutlet weak var buttonLayout: UIButton!
    
    
    
    
    
    
    func playSound() {
        let url = Bundle.main.url(forResource: "01 On Your Wings", withExtension: "mp3")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error.description)
        }
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
buttonLayout.layer.cornerRadius = 10
        
        
        let whale = marineLife()
        whale.elevation = 274
        whale.food = "Plankton"
        whale.speciesName = "Whale"
        whale.speciesType = "mammal"
        whale.printStuff()
        
        
        print("Mike is learning git")   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  var changeColor = 0
  var musicPlayerChanger = 0
    @IBAction func OHYA(_ sender: Any) {
        if musicPlayerChanger == 0{
            playSound()
            musicPlayerChanger = musicPlayerChanger + 1
        }
        changeColor = changeColor + 1
        if changeColor == 1{
            mainBackGround.backgroundColor = UIColor.red
            greeting.text = "These colors are kind of cool!"
            greeting.backgroundColor = UIColor.red
            buttonLayout.layer.position.y = 255
            buttonLayout.layer.position.x = 255
        }
        if changeColor == 2{
            mainBackGround.backgroundColor = UIColor.green
            greeting.backgroundColor = UIColor.green
            greeting.text = "Kind of cool how i can change colors."
            buttonLayout.layer.position.y = 220
            buttonLayout.layer.position.x = 200}
        if changeColor == 3{
            mainBackGround.backgroundColor = UIColor.yellow
            greeting.backgroundColor = UIColor.yellow
            greeting.text = "When i change the value of changeColor."
            buttonLayout.layer.position.y = 200
            buttonLayout.layer.position.x = 280
        }
        if changeColor == 4{
            mainBackGround.backgroundColor = UIColor.blue
            greeting.backgroundColor = UIColor.blue
            greeting.text = "Everything is just a little more interesting when you learn how to code."
            buttonLayout.layer.position.y = 230
            buttonLayout.layer.position.x = 200
        }
        if changeColor == 5{
            mainBackGround.backgroundColor = UIColor.purple
            greeting.backgroundColor = UIColor.purple
            greeting.text = "Like the possibilities are endless"
            buttonLayout.layer.position.y = 250
            buttonLayout.layer.position.x = 250
        }
        if changeColor > 5 {changeColor = changeColor - 6}
}
    
}

