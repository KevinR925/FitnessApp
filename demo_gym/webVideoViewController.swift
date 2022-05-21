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
    
    var id:String = ""
    var videourl:URL?{
        return URL(string: "https://www.youtube.com/embed/\(self.id)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        id = UserDefaults.standard.string(forKey: "youtube")!
        
        if let url = self.videourl{
            let urlRequest = URLRequest(url: url)
            webview.load(urlRequest)
        }
               
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
