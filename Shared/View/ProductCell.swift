//
//  ProductCell.swift
//  Artable
//
//  Created by Krishna Torrence on 8/9/19.
//  Copyright © 2019 Krishna Torrence. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {
    
    //Outlets
    @IBOutlet weak var productImage: RoundedImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var favoriteBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configueCell(product: Product){
        productTitle.text = product.name
        if let url = URL(string: product.imgUrl) {
            productImage.kf.setImage(with: url)
        }
    }
    
    //Actions
    @IBAction func addToCartClicked(_ sender: Any) {
    }
    
    @IBAction func favoriteClicked(_ sender: Any) {
    }
    
    
}
