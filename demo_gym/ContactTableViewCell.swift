//
//  ContactTableViewCell.swift
//  demo_gym
//
//  Created by Xiaofeng on 2022/5/19.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var potrait: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var expertise: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        potrait.image = UIImage(named: "anonymous")
        // Initialization code
    }
    @IBAction func contact(_ sender: Any) {
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
