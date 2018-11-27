//
//  ViewController.swift
//  Hello
//
//  Created by 伊東大樹 on 2018/09/14.
//  Copyright © 2018年 伊東大樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton(type: UIButtonType.system)
        
        button.addTarget(self, action: #selector(buttonEvent(_:)), for: UIControlEvents.touchUpInside)
        
        button.setTitle("Press!", for: UIControlState.normal)

        button.sizeToFit()
        
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        
        // 文字色を変える
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        
        // 背景色を変える
        button.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        
        // 枠の太さを変える
        button.layer.borderWidth = 1.0
        
        // 枠の色を変える
        button.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        
        // 枠に丸みをつける
        button.layer.cornerRadius = 25
        
        // ボタンが押されたときのラベル
        button.setTitle("押された！", for: UIControlState.highlighted)
        
        // ボタンが押されたときの文字色
        button.setTitleColor(UIColor.red, for: UIControlState.highlighted)
        
        button.center = self.view.center
        
        self.view.addSubview(button)
    }
    
    func getRandomColor() -> UIColor {
        //Generate between 0 to 1
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    
    
    @objc func buttonEvent(_ sender: UIButton) {
    
        print("\(sender)")
        
        self.view.backgroundColor = getRandomColor()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

