//
//  testViewController.swift
//  demo_gym
//
//  Created by MacBook on 2022/5/21.
//

import UIKit

class testViewController: UIViewController {

    @IBOutlet weak var testid: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let id = UserDefaults.standard.string(forKey: "test1"){
            testid.text = id   }
        
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
