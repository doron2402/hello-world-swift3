//
//  ViewController.swift
//  hello_world
//
//  Created by Doron Segal on 2/13/17.
//  Copyright © 2017 Doron Segal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var titleElement: UIImageView!
    @IBOutlet weak var welcomeBtn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var shalomBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func goToStartPage() {
        titleElement.isHidden = true;
        background.isHidden = true;
        backBtn.isHidden = true;
        welcomeBtn.isHidden = false;
        shalomBtn.isHidden = false;
    }
    
    func goToEndPage() {
        titleElement.isHidden = false;
        background.isHidden = false;
        backBtn.isHidden = false;
        welcomeBtn.isHidden = true;
        shalomBtn.isHidden = true;
    }
    
    @IBAction func welcomePressed(_ sender: Any) {
        goToEndPage()
    }
    
    @IBAction func shalomBtnPressed(_ sender: Any) {
            goToEndPage()
    }
    
    @IBAction func goBack(_ sender: Any) {
        goToStartPage()
    }
}

