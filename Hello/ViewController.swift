//
//  ViewController.swift
//  Hello
//
//  Created by Gabriel Sabastian Hayes on 10/25/17.
//  Copyright © 2017 Gabriel Sabastian Hayes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var greeting: UITextView!
    @IBOutlet weak var mainBackGround: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
print("Hello This is a change i made...")   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
var changeColor = 0
    @IBAction func OHYA(_ sender: Any) {
        changeColor = changeColor + 1
        if changeColor == 1{
            mainBackGround.backgroundColor = UIColor.red
            greeting.text = "These colors are kind of cool!"
            greeting.backgroundColor = UIColor.red
        }
        if changeColor == 2{
            mainBackGround.backgroundColor = UIColor.green
            greeting.backgroundColor = UIColor.green
            greeting.text = "Kind of cool how i can change colors."
        }
        if changeColor == 3{
            mainBackGround.backgroundColor = UIColor.yellow
            greeting.backgroundColor = UIColor.yellow
            greeting.text = "When i change the value of changeColor."
        }
        if changeColor == 4{
            mainBackGround.backgroundColor = UIColor.blue
            greeting.backgroundColor = UIColor.blue
            greeting.text = "Everything is just a little more interesting when you learn how to code."
            
        }
        if changeColor == 5{
            mainBackGround.backgroundColor = UIColor.purple
            greeting.backgroundColor = UIColor.purple
            greeting.text = "Like the possibilities are endless"
        }
        if changeColor > 5 {changeColor = changeColor - 6}
}
    
}

