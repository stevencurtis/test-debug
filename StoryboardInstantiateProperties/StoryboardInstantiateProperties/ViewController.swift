//
//  ViewController.swift
//  StoryboardInstantiateProperties
//
//  Created by Steven Curtis on 09/02/2024.
//

import UIKit

class ViewController: UIViewController {
    var name: String = ""
    
    init?(coder: NSCoder, name: String) {
        self.name = name
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    @IBAction func fromSBAction() {
        performSegue(withIdentifier: "next", sender: nil)
        
    }
    @IBAction func fromNav() {
            let storyboard = UIStoryboard(name: "NavBarStoryboard", bundle: nil)
            let viewController = storyboard.instantiateInitialViewController(creator: { coder in
                let vc = SecondViewController(coder: coder, text: "test")
                return vc
            })!
            present(viewController, animated: true)
    }
    
    @IBAction func fromDirectAction() {
        let storyboard = UIStoryboard(name: "NextStoryboard", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController(creator: { coder in
            let vc = SecondViewController(coder: coder, text: "test")
            return vc
        })!
        present(viewController, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

