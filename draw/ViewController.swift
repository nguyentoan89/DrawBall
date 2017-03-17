//
//  ViewController.swift
//  draw
//
//  Created by Nguyen Cong Toan on 3/17/17.
//  Copyright © 2017 mr.t. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var _margin: CGFloat = 40
    var _margin1: CGFloat = 70
    override func viewDidLoad() {
        super.viewDidLoad()
            }
   
    @IBOutlet weak var tf_number: UITextField!
    
    @IBAction func btn_Draw(_ sender: UIButton) {
        let n = Int(tf_number.text!)
        DrawBall(na: n!)
        tf_number.text = nil
    }
    
    @IBAction func btn_Clear(_ sender: UIButton) {
      //  self.view.removeFromSuperview()
    }
    
    func DrawBall(na: Int)
    {
        for Hang in 0..<na
        {
            for Cot in 0..<na
            {
                let image = UIImage(named: "green")
                let Ball = UIImageView(image: image)
                Ball.center = CGPoint(x: _margin + CGFloat(Hang)*SpaceBetweenBall_Width(n: na), y: _margin1 + CGFloat(Cot)*SpaceBetweenBall_Height(n: na))
                    self.view.addSubview(Ball)
            }
        }
    }
    
    func SpaceBetweenBall_Width(n: Int) -> CGFloat
    {
        let space = (self.view.bounds.size.width - 2*_margin)/CGFloat(n-1)
        return space
    }
    func SpaceBetweenBall_Height(n: Int) -> CGFloat
    {
        let space = (self.view.bounds.size.height - 2*_margin1)/CGFloat(n-1)
        return space
    }
    
    
}

