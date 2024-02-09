//
//  SecondViewController.swift
//  StoryboardInstantiateProperties
//
//  Created by Steven Curtis on 09/02/2024.
//

import UIKit

class SecondViewController: UIViewController {

    init?(coder: NSCoder, text: String) {
        print(text)
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
