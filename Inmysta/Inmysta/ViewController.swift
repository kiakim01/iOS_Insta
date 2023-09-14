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
        bodyStackView.addSubview(mainProfileBox)
        bodyStackView.addSubview(descProfilBox)
        bodyStackView.addSubview(buttonBox)
        mainProfileBox.addSubview(imgProfile)
        mainProfileBox.addSubview(cusotomProfileCount)
        descProfilBox.addSubview(customProfileDesc)
        buttonBox.addSubview(customButtonSection)
    }
 
    func snapKitLayout() {
       contentsScrollView.backgroundColor = .systemGroupedBackground
        contentsScrollView.snp.makeConstraints{ make in
            make.left.right.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        
        bodyStackView.backgroundColor =  .systemGray6
        bodyStackView.snp.makeConstraints { make in
//            make.width.equalTo(100)
            make.height.equalTo(1000)
            make.centerX.equalToSuperview()
            make.top.equalTo(contentsScrollView.snp.top).offset(0)
            make.bottom.equalTo(contentsScrollView.snp.bottom).offset(-20)
            make.left.right.equalToSuperview()
        }
        
//        mainProfileBox.layer.borderWidth = 1
        mainProfileBox.snp.makeConstraints{ make in
            make.top.equalTo(bodyStackView.snp.top).offset(20)
            make.left.right.equalToSuperview()
            make.height.equalTo(150)
        }
        
//        descProfilBox.backgroundColor = .systemGreen
//        descProfilBox.layer.borderWidth = 1
        descProfilBox.snp.makeConstraints{ make in
            make.top.equalTo(mainProfileBox.snp.bottom).offset(0)
            make.left.right.equalToSuperview()
            //contents에 따라서 유동적으로 움직이도록 조정
            make.height.equalTo(90)
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
//        profileCount.layer.borderColor = UIColor.blue.cgColor
        cusotomProfileCount.snp.makeConstraints{make in
            make.height.equalTo(88)
            make.centerY.equalToSuperview()
            make.right.equalTo(mainProfileBox.snp.right).offset(-10)
            make.left.equalTo(imgProfile.snp.right).offset(30)
        }
        
        

//        buttonBox.layer.borderWidth = 1
        buttonBox.snp.makeConstraints{ make in
            make.top.equalTo(descProfilBox.snp.bottom).offset(0)
            make.left.right.equalToSuperview()
            make.height.equalTo(60)
        }

    
        customButtonSection.snp.makeConstraints{ make in
            make.top.bottom.left.right.equalToSuperview()
        }
        

    }
}
