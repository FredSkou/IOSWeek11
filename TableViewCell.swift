//
//  TableViewCell.swift
//  IOSWeek11
//
//  Created by admin on 16/06/2020.
//  Copyright © 2020 Fred. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var cellImageVIew: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    // I should have chosen something else than image. Makes is very confusing.
    // Here we set the cell to the right image and title
    func setImage(image: Image){
        cellImageVIew.image = image.image
        cellLabel.text = image.title
        
    }
    
}
