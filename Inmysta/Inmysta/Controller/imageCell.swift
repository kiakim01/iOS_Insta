//
//  imageCell.swift
//  Inmysta
//
//  Created by kiakim on 2023/09/15.
//

import UIKit
import SnapKit

class ImageCell: UICollectionViewCell {
    
    let contentsImageView : UIImageView = {
       let view = UIImageView()
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
          
        setupUI()
  
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI (){
        addSubview(contentsImageView)
        
        contentsImageView.backgroundColor = UIColor.white
        contentsImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
    }
}
