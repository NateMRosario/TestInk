//
//  StockImagesCollectionViewCell.swift
//  TestInk
//
//  Created by C4Q on 3/29/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class StockImagesCollectionViewCell: UICollectionViewCell {
    lazy var stockImage: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "placeholder-image")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit() {
        backgroundColor = .white
        setupViews()
    }
    
    func setupViews(){
        addSubview(stockImage)
        stockImage.snp.makeConstraints { (image) in
            image.top.leading.trailing.equalTo(self)
            image.bottom.equalTo(self.snp.top)
        }
    }
}
