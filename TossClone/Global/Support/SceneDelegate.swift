//
//  SceneDelegate.swift
//  TossClone
//
//  Created by 이지수 on 2022/06/28.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.backgroundColor = UIColor(red: 241/255, green: 243/255, blue: 245/255, alpha: 1.0)
        window?.rootViewController = TabBarController()
        window?.makeKeyAndVisible()
    }
}
