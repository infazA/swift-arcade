//
//  AppDelegate.swift
//  Kijiji
//
//  Created by jrasmusson on 2022-05-26.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground

        let homeVC = HomeViewController()
        let myVC = MyKijijiViewController()
        let postVC = PostViewController()
        let favVC = FavoritesViewController()
        let messageVC = MessagesViewController()

        homeVC.setTabBarimage(imageName: "house", title: "Home", tag: 0)
        myVC.setTabBarimage(imageName: "person", title: "My Kijiji", tag: 1)

        let tabBarController = UITabBarController()

        tabBarController.viewControllers = [homeVC, myVC]
        tabBarController.tabBar.tintColor = .systemGreen
        tabBarController.tabBar.isTranslucent = false

        window?.rootViewController = tabBarController

        return true
    }

}

