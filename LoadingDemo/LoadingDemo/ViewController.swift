//
//  ViewController.swift
//  LoadingDemo
//
//  Created by Muthineni, Sridhar on 8/2/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startAction(){
        self.view.startLodingActivity(self.view, text: "Loading ...")
    }

    @IBAction func stopAction(){
        self.view.stopLoading()

    }
}

