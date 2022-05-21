//
//  CourseViewController.swift
//  demo_gym
//
//  Created by Xiaofeng on 2022/5/19.
//

import UIKit

class CourseViewController: UIViewController {

    @IBOutlet weak var courseName: UILabel!
    @IBOutlet weak var timeValue: UILabel!
    @IBOutlet weak var count: UILabel!
    
    var delayTimer:Timer?
    var courseTimer:Timer?
    var countDownTimer:Timer?
    var countDown = 5
    var timer:Int = 0
    var name:String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(name)
        courseName.text = name

        countDownTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {
            timer in
        
            //set courseTimer to invalid -> suspend the course timer
            self.courseTimer?.invalidate()
            
            self.count.text = String(self.countDown)
            if self.countDown > 0 {
                self.countDown = self.countDown - 1
            }else {
                //set the count down timer to invalid and make the count down label to nil
                self.countDownTimer!.invalidate()
                self.count.text = nil
            }
        }
        
        
        delayTimer = Timer.scheduledTimer(withTimeInterval: 6, repeats: false){
            timer in

            self.courseTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){
                timer in

                self.leftTime()
            }
        }

        
    }
    
    func leftTime() {
        timeValue.text = String(timer)
        if timer > 0 {
            timer = timer - 1
        }else {
            courseTimer?.invalidate()
            let navigation = self.storyboard?.instantiateViewController(withIdentifier: "SupportPage") as! supportViewController
            self.navigationController?.pushViewController(navigation, animated: true)
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
