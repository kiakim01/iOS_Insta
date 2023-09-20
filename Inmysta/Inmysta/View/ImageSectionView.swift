//
//  ImageSectionView.swift
//  Inmysta
//
//  Created by kiakim on 2023/09/18.
//

import UIKit


extension ImageSection {
    func setupUI(){
        self.addSubview(container)
        container.addArrangedSubview(buttonStackView)
        container.addArrangedSubview(collectionView)
        buttonStackView.addArrangedSubview(buttonOfCollectionView)
        buttonStackView.addArrangedSubview(buttonOfETC)

        container.snp.makeConstraints{ make in
            make.height.equalTo(1000)
            //[desc] 4개 방향 모두
            make.edges.equalToSuperview()
        }
        
//        buttonStackView.backgroundColor = UIColor.systemRed
        buttonStackView.snp.makeConstraints{make in
            make.height.equalTo(50)
        }
//        collectionView.backgroundColor = UIColor.systemMint
        collectionView.snp.makeConstraints{make in
            make.left.right.bottom.equalToSuperview()
        }
        
        let fullScreenWidth = UIScreen.main.bounds.width
        let buttonWidth = fullScreenWidth / 2
     
//        buttonOfCollectionView.backgroundColor = UIColor.systemPink
       
        buttonOfCollectionView.bounds.size.width = buttonWidth
        buttonOfCollectionView.bounds.size.height = 50
        buttonOfCollectionView.layer.addBorder([.right], color: UIColor.systemGray2, width: 0.5)
        buttonOfCollectionView.snp.makeConstraints { make in
            make.width.equalTo(buttonWidth)
        }
        
//        buttonOfETC.backgroundColor = UIColor.systemBlue
        buttonOfETC.snp.makeConstraints{ make in
            make.width.equalTo(buttonWidth)
        }
    }
}
