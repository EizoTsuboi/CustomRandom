//
//  ViewController.swift
//  CostomRandom
//
//  Created by 坪井衛三 on 2019/08/18.
//  Copyright © 2019 Eizo Tsuboi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dogCountLabel: UILabel!
    @IBOutlet weak var catCountLabel: UILabel!
    
    var dogCount: Int = 0
    var catCount: Int = 0
    
    var mainheight: CGFloat = 0.0
    var mainwidth: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainheight = UIScreen.main.bounds.height
        mainwidth = UIScreen.main.bounds.width
    }
    @IBAction func dogbutton(_ sender: Any) {
        let randomViewX = CGFloat.random(in: 10 ... mainwidth - 10 )
        let randomViewY = CGFloat.random(in: 200 ... mainheight - 200)
        
        let dogCustomView: DogCustom = DogCustom(frame: CGRect(x: randomViewX, y: randomViewY, width: 40, height: 40))
        self.view.addSubview(dogCustomView)
        
        dogCount += 1
        dogCountLabel.text! = "犬の数：\(dogCount)"
    }
    @IBAction func catbutton(_ sender: Any) {
        let randomViewX = CGFloat.random(in: 10 ... mainwidth - 10 )
        let randomViewY = CGFloat.random(in: 200 ... mainheight - 200)
        
        let catCostomView: CatCustom = CatCustom(frame: CGRect(x: randomViewX, y: randomViewY, width: 40, height: 40))
        self.view.addSubview(catCostomView)
        
        catCount += 1
        catCountLabel.text! = "猫の数：\(catCount)"
    }
    

}

