//
//  DisplayDataVC.swift
//  segues
//
//  Created by Xavier Eggen on 11.04.17.
//  Copyright © 2017 Xavier Eggen. All rights reserved.
//

import UIKit

class DisplayDataVC: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    
    private var _newData:String!
    
    var newData: String {
        get {
            return _newData
        }
        set {
            _newData = newValue
        }
    }
    
    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        dataLabel.text = _newData
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
