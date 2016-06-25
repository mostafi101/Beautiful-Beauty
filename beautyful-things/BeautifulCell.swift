//
//  BeautifulCell.swift
//  beautyful-things
//
//  Created by Mostafijur Rahaman on 6/24/16.
//  Copyright © 2016 Mostafijur Rahaman. All rights reserved.
//

import UIKit

class BeautifulCell: UITableViewCell {
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        mainImage.layer.cornerRadius = 5.0
        mainImage.clipsToBounds = true
    }

    func configureCell(image: UIImage, text: String){
        mainImage.image = image
        mainLabel.text = text
    }
}
