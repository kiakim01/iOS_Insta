//
//  ImageSection.swift
//  Inmysta
//
//  Created by kiakim on 2023/09/15.
//

import UIKit
import SnapKit


class ImageSection: UIView, UICollectionViewDelegate, UICollectionViewDataSource {

    let images = ["contentsImage1","contentsImage2","contentsImage3","contentsImage4","contentsImage5","contentsImage6","contentsImage7"]

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
        //cell이 그리드 혹은 리스트로 표시되도록 기본 동작을 제공
        let flowLayout = UICollectionViewFlowLayout()
        //UICollectionView 인스턴스 생성
        //[frame: .zero]는 CGRect의 초기값으로 프레임의 크기와 위치를 모두 0로 설정한다는 의미
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
    
    
    

    
}

//MARK : collectionView
extension ImageSection {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //[Q]dequeue가 뭘까 진짜 궁금
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! ImageCell

        cell.contentsImageView.image = UIImage(named: images[indexPath.row])
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


