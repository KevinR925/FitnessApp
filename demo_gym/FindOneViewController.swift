//
//  FindOneViewController.swift
//  demo_gym
//
//  Created by Xiaofeng on 2022/5/19.
//

import UIKit

class FindOneViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var displayZone: UITableView!
    
    var contacts:Dictionary<String,String> = ["John":"Yoga",
                                              "Jim":"Running",
                                              "Tom":"Boxing",
                                              "Andy":"Taichi"
                                            ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayZone.delegate = self
        displayZone.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCard", for: indexPath) as! ContactTableViewCell
        let name = Array(contacts.keys)[indexPath.row]
        let expertise = Array(contacts.values)[indexPath.row]
        cell.name.text = name
        cell.expertise.text = expertise
        return cell
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
