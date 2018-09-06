//
//  CustomCellTableViewCell.swift
//  IOU
//
//  Created by Harshavardhan K K on 18/08/18.
//  Copyright © 2018 Harshavardhan K. All rights reserved.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {

    //@IBOutlet weak var backgroundImageView: UIImageView?
   // @IBOutlet weak var netAmount: UILabel?
    @IBOutlet weak var name: UILabel!
   // @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var backgroundCardView: UIView!
    
    private let colors = ["#74b9ff", "#0984e3", "#fab1a0", "#00cec9", "#10ac84", "#2e86de", "#e74c3c"]
    
    func chooseColor() -> UIColor {
        let index = Int(arc4random_uniform(10) % UInt32(colors.count))
        return UIColor.init(hexString: colors[index], alpha: 0.9)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func createCard() {
        
        contentView.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1.0)
        
        backgroundCardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.2).cgColor
        backgroundCardView.backgroundColor = .white
        backgroundCardView.layer.cornerRadius = 8
        backgroundCardView.layer.masksToBounds = false
        backgroundCardView.layer.shadowOffset = CGSize(width: 0, height: 0)
        backgroundCardView.layer.shadowOpacity = 0.9
        
        

    }
    
}
