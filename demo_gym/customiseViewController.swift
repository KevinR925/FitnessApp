//
//  customiseViewController.swift
//  demo_gym
//
//  Created by MacBook on 2022/5/21.
//

import UIKit

class customiseViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {


    @IBOutlet weak var courseA: UIPickerView!
    
    var courses = ["Yoga","Boxing","Dance","Taichi","None","Test(only 10s)"]
    var durations = [180,60,120,300,0,10]
    var course = ""
    var timer = 0
    var vid = ""
    var videoID = ["oJBTw9tvh_s","KWmN5J_Npr4","u0oggGCS28g","e4VIw41R-PU","BHY0FxzoKZE","yTL_bNvXJ9s"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        course = "Yoga"
        timer = 180
        vid = "oJBTw9tvh_s"
        courseA.dataSource = self
        courseA.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courses.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courses[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        course = courses[row]
        timer = durations[row]
        vid = videoID[row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "courseTimer" {
            let transferValue = segue.destination as! CourseViewController
            transferValue.name = course
            transferValue.timer = timer
            
            
        }
    }
    @IBAction func watch(_ sender: Any) {
        UserDefaults.standard.set(vid, forKey: "youtube")
    }
    
    @IBAction func testwatch(_ sender: Any) {
        UserDefaults.standard.set(vid, forKey: "test1")
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

