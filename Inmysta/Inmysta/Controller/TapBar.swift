//
//  TapBar.swift
//  Inmysta
//
//  Created by kiakim on 2023/09/13.
//

import UIKit


class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        self.tabBar.tintColor = UIColor.black
        self.tabBar.unselectedItemTintColor = .systemGray2
        
        let firstVC = UINavigationController(rootViewController: ViewController())
        firstVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        firstVC.tabBarItem.image = UIImage(systemName: "person")
        //navigation controller 이름과 분리하고 싶음 .... 
        firstVC.tabBarItem.title = "Home"
              
        
        let dummyView = UIViewController()
        dummyView.tabBarItem.title = "Dummy"
        dummyView.tabBarItem.image = UIImage(systemName: "trash.fill")
        
        viewControllers = [firstVC, dummyView]
        
    }


}
