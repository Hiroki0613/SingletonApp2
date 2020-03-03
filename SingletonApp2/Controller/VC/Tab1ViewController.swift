//
//  Tab1ViewController.swift
//  SingletonApp2
//
//  Created by 近藤宏輝 on 2020/03/03.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit

class Tab1ViewController: UITabBarController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
    @IBAction func startSingleton1(_ sender: Any) {
        let singleton :Singleton =  Singleton.sharedInstance
               
        guard let content = textField.text else { return }
                
        singleton.saveContents(content: content)
        label.text = singleton.getContents()
    }
    

}
