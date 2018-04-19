//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by alwyn tablatin on 24/03/2018.
//  Copyright © 2018 alwyn tablatin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var ballValue = 0
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var imageViewBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateAsk()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateAsk()
    }
    
    func updateAsk(){
        ballValue = Int(arc4random_uniform(5))
        
        imageViewBall.image = UIImage(named: ballArray[ballValue])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateAsk()
    }
    
}

