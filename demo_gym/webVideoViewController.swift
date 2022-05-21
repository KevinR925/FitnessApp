//
//  webVideoViewController.swift
//  demo_gym
//
//  Created by TengyueMacBook on 2022/5/21.
//

import UIKit
import WebKit
class webVideoViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.youtube.com/embed/bcpelNJTDbY")!
                let request = URLRequest(url: url)
                webview.load(request)        // Do any additional setup after loading the view.
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
