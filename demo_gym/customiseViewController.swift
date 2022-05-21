//
//  customiseViewController.swift
//  demo_gym
//
//  Created by MacBook on 2022/5/21.
//

import UIKit

class customiseViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {


    @IBOutlet weak var courseA: UIPickerView!
    
    var courses = ["Yoga","Boxing","Dance","Taichi","None"]
    var durations = [180,60,120,300,0]
    var course = ""
    var timer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        course = "Yoga"
        timer = 180
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
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "courseTimer" {
            let transferValue = segue.destination as! CourseViewController
            transferValue.name = course
            transferValue.timer = timer
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

