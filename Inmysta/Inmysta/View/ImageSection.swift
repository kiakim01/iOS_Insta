//
//  ImageSection.swift
//  Inmysta
//
//  Created by kiakim on 2023/09/15.
//

import UIKit
import SnapKit


class ImageSection: UIView, UICollectionViewDelegate, UICollectionViewDataSource {

    

    let container : UIStackView = {
        let stackview = UIStackView()
        stackview.axis = .vertical
        return stackview
    }()
    
    let buttonStackView : UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .horizontal
        return stackView
    }()
    
    let buttonOfCollectionView : UIButton = {
        let button = UIButton()
        let image = UIImage(named: "grid")
        button.setImage(image, for: .normal)
        return button
    }()
    
    let buttonOfETC : UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "questionmark")
        button.setImage(image, for: .normal)
        button.tintColor = UIColor.black
        return button
    }()
    
    let collectionView : UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collection.register(ImageCell.self, forCellWithReuseIdentifier: "imageCell")
        return collection
    }()
    
    override init(frame:CGRect){
        super.init(frame: frame)
        setupUI()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func setupUI(){
        self.addSubview(container)
        container.addArrangedSubview(buttonStackView)
        container.addArrangedSubview(collectionView)
        buttonStackView.addArrangedSubview(buttonOfCollectionView)
        buttonStackView.addArrangedSubview(buttonOfETC)
        
        

        container.snp.makeConstraints{ make in
            make.height.equalTo(10000)
            //[desc] 4개 방향 모두
            make.edges.equalToSuperview()
        }
        
//        buttonStackView.backgroundColor = UIColor.systemRed
        buttonStackView.snp.makeConstraints{make in
            make.height.equalTo(50)
        }
        collectionView.backgroundColor = UIColor.systemMint
        collectionView.snp.makeConstraints{make in
            make.left.right.bottom.equalToSuperview()
        }
        
        let fullScreenWidth = UIScreen.main.bounds.width
        let buttonWidth = fullScreenWidth / 2
     
//        buttonOfCollectionView.backgroundColor = UIColor.systemPink
       
        buttonOfCollectionView.bounds.size.width = buttonWidth
        buttonOfCollectionView.bounds.size.height = 50
        buttonOfCollectionView.layer.addBorder([.right], color: UIColor.systemGray2, width: 1)
        buttonOfCollectionView.snp.makeConstraints { make in
            make.width.equalTo(buttonWidth)
        }
        
//        buttonOfETC.backgroundColor = UIColor.systemBlue
        buttonOfETC.snp.makeConstraints{ make in
            make.width.equalTo(buttonWidth)
        }
    }
    
}

//MARK : collectionView
extension ImageSection {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! ImageCell
        cell.backgroundColor = UIColor.white
        return cell
    }
    

    
}

extension ImageSection: UICollectionViewDelegateFlowLayout {
    
    // cell 사이즈 지정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // 뷰 컨트롤러의 인스턴스를 통해 view 속성에 접근
        let fullScreenWidth = UIScreen.main.bounds.size.width
            let oneImageSize = (fullScreenWidth - 4) / 3
            
            return CGSize(width: oneImageSize, height: oneImageSize)
        
    }
    
    //cell의 상하간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    //cell의 좌우간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    
    
    
}

