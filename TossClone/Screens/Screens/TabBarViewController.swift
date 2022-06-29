//
//  TabBarController.swift
//  TossClone
//
//  Created by 이지수 on 2022/06/28.
//

import UIKit

class TabBarController: UITabBarController {
    private lazy var homeViewController: UIViewController = {
        let viewController = UIViewController()
        let tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house.fill"), tag: 0)
        viewController.tabBarItem = tabBarItem
        
        return viewController
    }()
    
    private lazy var bonusViewController: UIViewController = {
        let viewController = UIViewController()
        let tabBarItem = UITabBarItem(title: "혜택", image: UIImage(systemName: "diamond.fill"), tag: 0)
        viewController.tabBarItem = tabBarItem
        
        return viewController
    }()
    
    private lazy var sendMondeyViewController: UIViewController = {
        let viewController = UIViewController()
        let tabBarItem = UITabBarItem(title: "송금", image: UIImage(systemName: "dollarsign.circle.fill"), tag: 0)
        viewController.tabBarItem = tabBarItem
        
        return viewController
    }()
    
    private lazy var stockViewController: UIViewController = {
        let viewController = UIViewController()
        let tabBarItem = UITabBarItem(title: "주식", image: UIImage(systemName: "chart.bar.fill"), tag: 0)
        viewController.tabBarItem = tabBarItem
        
        return viewController
    }()
    
    private lazy var allViewController: UIViewController = {
        let viewController = UIViewController()
        let tabBarItem = UITabBarItem(title: "전체", image: UIImage(systemName: "line.3.horizontal"), tag: 0)
        viewController.tabBarItem = tabBarItem
        
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [homeViewController, bonusViewController, sendMondeyViewController, stockViewController, allViewController]
        self.configureTabBar()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        var tabFrame = self.tabBar.frame
        tabFrame.size.height = 88
        tabFrame.origin.y = self.view.frame.size.height - 88
        self.tabBar.frame = tabFrame
    }
}

extension TabBarController {
    func configureTabBar() {
        self.tabBar.tintColor = .label
        self.tabBar.layer.cornerRadius = 20
        self.tabBar.layer.borderColor = UIColor.lightGray.cgColor
        self.tabBar.layer.borderWidth = 0.4
    }
}