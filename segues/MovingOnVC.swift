//
//  MovingOnVC.swift
//  segues
//
//  Created by Xavier Eggen on 11.04.17.
//  Copyright © 2017 Xavier Eggen. All rights reserved.
//

import UIKit

class MovingOnVC: UIViewController {

    @IBAction func moveOnPressed(_ sender: UIButton) {
        let data = sender.titleLabel?.text
        performSegue(withIdentifier: "DisplayData", sender: data)
    }
    
    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }

       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DisplayDataVC {
         
            if let newData = sender as? String {
                destination.newData = newData
            }
        }
    }
}
