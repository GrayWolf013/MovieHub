//
//  AppDelegate.swift
//  MovieHub
//
//  Created by BESBES Ahmed on 20/5/2022.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Properties

    var window: UIWindow?
    var rootViewController: UIViewController? {
        get { return self.window?.rootViewController }
        set {
            self.window?.rootViewController = newValue
            self.window?.makeKeyAndVisible()
        }
    }

    // MARK: - App Delegate methods

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let navigationController  = UINavigationController()
        let initialViewController = MovieListViewController()
        navigationController.viewControllers = [initialViewController]
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
}
