//
//  ViewController.swift
//  2021.Spring.CheckWork
//
//  Created by Mitsu Kumagai on 2021/06/05.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var nextA: UIButton!
    @IBOutlet var random: UIButton!
   
    
    var number :Int = 0
    
    
    var foodArr: [String] = ["ハンバーグ","カレー","焼肉","お寿司"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
         nextA.layer.cornerRadius = 18
         random.layer.cornerRadius = 18
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Next(){
        if number == 3{
            number = 0
        }else{
        number = number + 1
        }
        label.text = foodArr[number]
        
        if number == 2{
            view.backgroundColor = UIColor.red
        }else{view.backgroundColor = UIColor.blue}
        
    }

    @IBAction func Random(){
        let A = Int.random(in: 0...3)
        number = Int(A)
        label.text = foodArr[number]
        if number == 2{
            view.backgroundColor = UIColor.red
        }else{view.backgroundColor = UIColor.blue
            
        }
    }
    
}

