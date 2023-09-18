//
//  ViewController.swift
//  Inmysta
//
//  Created by kiakim on 2023/09/13.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    //MARK: property
    
    
    
    let rightButton : UIBarButtonItem = {
        let button = UIBarButtonItem(image: UIImage(named: "menuIcon"), style: .plain, target: self, action: nil)
        return button
    }()
    
    let contentsScrollView : UIScrollView = {
        let scrollView = UIScrollView()
        return scrollView
    }()
    
    let bodyStackView : UIStackView = {
        let boxcontenst = UIStackView()
        boxcontenst.axis = .vertical
        return boxcontenst
    }()
    
    let mainProfileBox : UIStackView = {
        let box = UIStackView()
        box.axis = .horizontal
        return box
    }()
    
    let imgProfile : UIImageView = {
        let img = UIImageView()
        //        img.image = UIImage()
        return img
    } ()
    
    let cusotomProfileCount : ProfileCount = {
        let profileCount = ProfileCount()
        return profileCount
    }()
    
    let descProfilBox : UIStackView = {
        let box = UIStackView()
        box.axis = .vertical
        return box
    }()
    
    let customProfileDesc : ProfileDesc = {
        let profileDesc = ProfileDesc()
        return profileDesc
    }()
    
    
    let buttonBox : UIView = {
        let box = UIView()
        //        box.axis = .horizontal
        return box
    }()
    
    let customButtonSection : ButtonSection = {
        let section = ButtonSection()
        return section
    }()
    
    let imageBox : UIView = {
        let box = UIView()
        return box
    }()
    
    let customImageSection : ImageSection = {
        let section = ImageSection()
        return section
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        title = "사용자 이름이 뜨게할꺼야" // 모든 타이틀을 셋팅
        navigationController?.navigationBar.topItem?.title = "사용자 이름"
        
        
        self.navigationItem.rightBarButtonItem = self.rightButton
        //        self.navigationItem.rightBarButtonItem?.tintColor = .systemGray
        ConfigureUI()
        
        snapKitLayout()
        
        
    }
}

//MARK: UI configure
extension ViewController{
    
    func ConfigureUI(){
        view.addSubview(contentsScrollView)
        contentsScrollView.addSubview(bodyStackView)
        bodyStackView.addArrangedSubview(mainProfileBox)
        bodyStackView.addArrangedSubview(descProfilBox)
        bodyStackView.addArrangedSubview(buttonBox)
        bodyStackView.addArrangedSubview(imageBox)
        mainProfileBox.addSubview(imgProfile)
        mainProfileBox.addSubview(cusotomProfileCount)
        descProfilBox.addSubview(customProfileDesc)
        buttonBox.addSubview(customButtonSection)
        imageBox.addSubview(customImageSection)
        
    }
    
    func snapKitLayout() {
        //       contentsScrollView.backgroundColor = .systemGroupedBackground
        contentsScrollView.snp.makeConstraints{ make in
            make.left.right.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            
        }
        // 스크롤뷰를 컨텐츠 크기에 맞게 조정하기 위해서 바로 하위뷰인 bodystackView의 edge를 기준으로 잡음
        contentsScrollView.contentLayoutGuide.snp.makeConstraints{ make in
            make.edges.equalTo(bodyStackView)
            
        }
        //스택뷰의 가로값을 지정
        contentsScrollView.frameLayoutGuide.snp.makeConstraints{make in
            make.width.equalTo(bodyStackView)
            
        }

        //[Q]빈값인데 왜 없애면 이상해 지는지 ... ?
        bodyStackView.snp.makeConstraints { make in

        }
        
//        mainProfileBox.backgroundColor = UIColor.systemBlue
        mainProfileBox.snp.makeConstraints{ make in
            make.height.equalTo(150)
        }
        

        descProfilBox.snp.makeConstraints{ make in
            //contents에 따라서 유동적으로 움직이도록 조정
            make.height.equalTo(90)
        }
        

        buttonBox.snp.makeConstraints{ make in

            make.height.equalTo(60)
        }
        
//        imageBox.backgroundColor = UIColor.systemYellow
        imageBox.snp.makeConstraints{make in
        }
        
        customImageSection.snp.makeConstraints{ make in
            make.edges.equalToSuperview()
        }
        
        imgProfile.image = UIImage(named: "quokka")
        imgProfile.layer.cornerRadius = 45
        imgProfile.layer.masksToBounds = true
        imgProfile.tintColor = UIColor.systemGray
        imgProfile.snp.makeConstraints {make in
            make.width.height.equalTo(90)
            make.centerY.equalToSuperview()
            make.left.equalTo(mainProfileBox.snp.left).offset(10)
        }
        
//        cusotomProfileCount.layer.borderWidth = 1
//        let fullScreenWidth =  UIScreen.main.bounds.width
//        let maxmumWidth: CGFloat = fullScreenWidth / 2
//        [Fix] max-width 주기
//        lessThanOrEqualTo
//        greaterThanOrEqualTo
//        cusotomProfileCount.backgroundColor = UIColor.red
        cusotomProfileCount.snp.makeConstraints{make in
            make.height.equalTo(88)
            make.centerY.equalToSuperview()
            make.right.equalTo(mainProfileBox.snp.right).offset(-10)
            make.left.equalTo(imgProfile.snp.right).offset(30)
        }

        
        customButtonSection.snp.makeConstraints{ make in
            make.top.bottom.left.right.equalToSuperview()
        }
        
        
    }
} 
